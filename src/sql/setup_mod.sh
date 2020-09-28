#!/bin/bash -e
###############################################################################
# FILE              : setup.sh
# USAGE             : PGHOST=testhost PGUSER=testuser PGPASSWORD=testpassword ./setup.sh qa
# DESCRIPTION       : Generates CCDD database.
# REQUIREMENTS      : Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset.
# ARGS (optional)   : qa
###############################################################################

ccdd_qa_release_date="20200902"
ccdd_current_release_date="20200903"
db_previous_month="ccdd_2020_09_03_233523"
ccdd_current_date=$(date +'%Y%m%d')
baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
distDir="$baseDir/../dist/$ccdd_current_date"
QA_changeDir="$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}"
release_changeDir="$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}"



if [ "$PGDATABASE" != '' ]; then
    echo 'Must not specify PGDATABASE'
    false
fi

# for whatever reason pgloader isn't respecting the PGDATABASE environment variable
# since it defaults to PGUSER, PGDATABASE is set so that psql does its work on the
# same database as pgloader; then afterward the database will be renamed

# PGDATABASE=ccdd_$(date +'%Y_%m_%d_%H%M%S')
PGDATABASE=$PGUSER

createdb "$PGDATABASE"

# DPD extract load
pgloader "$baseDir/dpdloader/dpdload.pgload"
pgloader "$baseDir/dpdloader/dpdload_ia.pgload"
pgloader "$baseDir/dpdloader/dpdload_dr.pgload"
pgloader "$baseDir/dpdloader/dpdload_ap.pgload"


# global config for CCDD generation process
pgloader "$baseDir/ccdd-config.pgload"


echo $db_previous_month
if [ -z "$db_previous_month" ]
then
      echo "No Previous Month Database"
else
      export db_previous_month
fi

# CCDD schema and source data
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-csv.sql"
pgloader "$baseDir/ccdd-inputs.pgload"

psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-instance-structure.sql"
sed -e "s/%QA_DATE%/$ccdd_qa_release_date/g" "$baseDir/ccdd-current-release.pgload.template" | sed -e "s/%RELEASE_DATE%/$ccdd_current_release_date/g" > "$baseDir/ccdd-current-release.pgload"
pgloader "$baseDir/ccdd-current-release.pgload" && rm "$baseDir/ccdd-current-release.pgload"

# load the data from views into main schema
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-run-views.sql"






