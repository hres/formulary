#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset

COMPARISON_SCHEMA="dpd_current"
SRC_SCHEMA="dpd"
SRC_SCHEMA_TEMP="dpd_temp"
CHANGE_SCHEMA="dpd_changes"

# set database
export PGDATABASE="registry"
baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# rename existing db
psql -d registry -c "ALTER SCHEMA $SRC_SCHEMA RENAME TO $SRC_SCHEMA_TEMP"

# create new dpd records
./dpd_import.sh

# rename existing db
psql -d registry -c "ALTER SCHEMA $SRC_SCHEMA RENAME TO $COMPARISON_SCHEMA"

# rename original schema to dpd
psql -d registry -c "ALTER SCHEMA $SRC_SCHEMA_TEMP RENAME TO $SRC_SCHEMA"

# create and populate ccdd.ingredient_stem for comparison
psql -d registry -c "CREATE TABLE $COMPARISON_SCHEMA.ingredient_stem_csv(
	ccdd varchar,
	top250name varchar,
	dpd_ingredient varchar,
	ing_stem varchar,
	hydrate varchar, 
	ntp_ing varchar
)"
pgloader "$baseDir/dpdload.pgload"

# create and populate public.ccdd-config for date comparison
psql -d registry -c "DROP TABLE if exists public.ccdd_config CASCADE"
pgloader "$baseDir/../ccdd-config.pgload"

# drop dpd_changes schema if exists 
psql -d registry -c "DROP SCHEMA IF EXISTS $CHANGE_SCHEMA CASCADE"

# process changes
psql -d registry < ./changes.sql

# remove dpd_changes directory and content if exists
rm -rf ./dpd_changes

# create dpd_changes directory
mkdir -p ./dpd_changes

# export dpd_changes tables into their designated files into the dpd_changes directory
psql -Atc "SELECT tablename FROM pg_tables WHERE schemaname='$CHANGE_SCHEMA'" $PGDATABASE |\
  while read TABLE_NAME; do
    psql -c "COPY $CHANGE_SCHEMA.$TABLE_NAME TO STDOUT WITH CSV" $PGDATABASE > "./dpd_changes/$TABLE_NAME.csv"
  done

# dpd changes are extracted, drop the dpd_current schema
psql -d registry -c "DROP SCHEMA $COMPARISON_SCHEMA CASCADE"