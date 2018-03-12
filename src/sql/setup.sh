#!/bin/bash -e

baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
distDir="$baseDir/../dist"

if [ "$PGDATABASE" != '' ]; then
    echo 'Must not specify PGDATABASE'
    false
fi

export PGDATABASE=ccdd_$(date +'%Y_%m_%d_%H%M%S')

createdb "$PGDATABASE"

# psql -v ON_ERROR_STOP=1 < dpdloader/dpd_structure.sql # empty schema for testing
# psql -v ON_ERROR_STOP=1 < dpdloader/dpd_constraints.sql # empty schema for testing

# DPD extract load
pgloader "$baseDir/dpdloader/dpdload.pgload"
pgloader "$baseDir/dpdloader/dpdload_ia.pgload"
pgloader "$baseDir/dpdloader/dpdload_dr.pgload"
pgloader "$baseDir/dpdloader/dpdload_ap.pgload"

# CCDD schema and source data
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-instance-structure.sql"
pgloader "$baseDir/ccdd-inputs.pgload"
pgloader "$baseDir/ccdd-current-release.pgload"

# load the data from views into main schema
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-run-views.sql"

# create output folder, then export CCDD concepts as CSV files to output
mkdir -p "$distDir"

psql -c "copy (select * from ccdd_mp_table) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/ccdd_mp_table.csv"
psql -c "copy (select * from ccdd_ntp_table) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/ccdd_ntp_table.csv"
psql -c "copy (select * from ccdd_tm_table) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/ccdd_tm_table.csv"
psql -c "copy (select * from ccdd_mp_ntp_tm_relationship) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/ccdd_mp_ntp_tm_relationship.csv"

echo
echo Generated "$PGDATABASE" and output in "$distDir"
