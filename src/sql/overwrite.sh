#!/bin/bash -e
SRC_DATABASE=registry
SRC_SCHEMA=registry_dpd
TGT_DATABASE=ccdd_2020_02_03_133853
TGT_SCHEMA=dpd
TGT_SCHEMA_TEMP=dpd_temp

# rename original table
psql -d $TGT_DATABASE -c "ALTER SCHEMA $TGT_SCHEMA RENAME TO $TGT_SCHEMA_TEMP"

# dump necessary tables
pg_dump -d $SRC_DATABASE --schema=dpd -t dpd.active_ingredient -t dpd.route -t dpd.pharmaceutical_form -t dpd.drug_product > temp_dump.sql

# restore tables in proper database
psql -d $TGT_DATABASE -c "CREATE schema $TGT_SCHEMA";
psql -d $TGT_DATABASE < temp_dump.sql

# remove dump file
rm temp_dump.sql

psql -d $TGT_DATABASE -c "ALTER SCHEMA $TGT_SCHEMA RENAME TO $SRC_SCHEMA"
psql -d $TGT_DATABASE -c "ALTER SCHEMA $TGT_SCHEMA_TEMP RENAME TO $TGT_SCHEMA"

psql -d $TGT_DATABASE -c "CREATE TABLE $TGT_SCHEMA.active_ingredient_src AS SELECT * FROM $SRC_SCHEMA.active_ingredient"
psql -d $TGT_DATABASE -c "CREATE TABLE $TGT_SCHEMA.route_src AS SELECT * FROM $SRC_SCHEMA.route"
psql -d $TGT_DATABASE -c "CREATE TABLE $TGT_SCHEMA.pharmaceutical_form_src AS SELECT * FROM $SRC_SCHEMA.pharmaceutical_form"

psql -d $TGT_DATABASE < ./overwrite.sql
