#!/bin/bash -e

ccdd_current_release_date="20180315"


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

# global config for CCDD generation process
pgloader "$baseDir/ccdd-config.pgload"

# CCDD schema and source data
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-instance-structure.sql"
pgloader "$baseDir/ccdd-inputs.pgload"
sed -e "s/%RELEASE_DATE%/$ccdd_current_release_date/g" "$baseDir/ccdd-current-release.pgload.template" > "$baseDir/ccdd-current-release.pgload"
pgloader "$baseDir/ccdd-current-release.pgload" && rm "$baseDir/ccdd-current-release.pgload"

# load the data from views into main schema
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-run-views.sql"

# create output folder, then export CCDD concepts as CSV files to output
mkdir -p "$distDir"

psql -c "copy (select mp_code, mp_formal_name, mp_en_description, mp_fr_description, mp_status, mp_status_effective_time, mp_type, \"Health_Canada_identifier\", \"Health_Canada_product_name\" FROM ccdd_mp_table) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/mp_qa_release.csv"
psql -c "copy (select ntp_code, ntp_formal_name, ntp_status, ntp_type, ntp_status_effective_time FROM ccdd_ntp_table) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/ntp_qa_release.csv"
psql -c "copy (select tm_code, tm_formal_name, tm_status, tm_status_effective_time FROM ccdd_tm_table) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/tm_qa_release.csv"
psql -c "copy (select mp_code, mp_formal_name, ntp_code, ntp_formal_name, tm_code, tm_formal_name FROM ccdd_mp_ntp_tm_relationship) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_qa_release.csv"

psql -c "copy (select mp_code, mp_formal_name, mp_en_description, mp_fr_description, mp_status, mp_status_effective_time, mp_type, \"Health_Canada_identifier\", \"Health_Canada_product_name\" FROM ccdd_mp_table WHERE tm_is_publishable = true) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/mp_release_candidate.csv"
psql -c "copy (select ntp_code, ntp_formal_name, ntp_status, ntp_type, ntp_status_effective_time FROM ccdd_ntp_table WHERE tm_is_publishable = true) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/ntp_release_candidate.csv"
psql -c "copy (select tm_code, tm_formal_name, tm_status, tm_status_effective_time FROM ccdd_tm_table WHERE tm_is_publishable = true) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/tm_release_candidate.csv"
psql -c "copy (select mp_code, mp_formal_name, ntp_code, ntp_formal_name, tm_code, tm_formal_name FROM ccdd_mp_ntp_tm_relationship WHERE tm_is_publishable = true) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_release_candidate.csv"

psql -c "copy (select * from ccdd_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/ccdd_special_groupings.csv"

echo
echo Generated "$PGDATABASE" and output in "$distDir"
