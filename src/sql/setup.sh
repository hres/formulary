#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset
ccdd_qa_release_date="20230103"
ccdd_current_release_date="20230105"
db_previous_month="ccdd_2023_01_05_135535"
ccdd_current_date=$(date +'%Y%m%d')
baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
distDir="$baseDir/../dist/$ccdd_current_date"
QA_changeDir="$distDir/QA_${ccdd_current_date}_from_${ccdd_qa_release_date}"
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
pgloader "$baseDir/dpdloader/dpdload.pgload" # has to be first because of a BEFORE LOAD EXECUTE
pgloader "$baseDir/dpdloader/dpdload_ia.pgload"
pgloader "$baseDir/dpdloader/dpdload_dr.pgload"
pgloader "$baseDir/dpdloader/dpdload_ap.pgload" # has to be last because of an AFTER LOAD EXECUTE


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

psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-instance-structure.sql"
pgloader "$baseDir/ccdd-inputs.pgload"
# sed -e "s/%QA_DATE%/$ccdd_qa_release_date/g" "$baseDir/ccdd-current-release.pgload.template" | sed -e "s/%RELEASE_DATE%/$ccdd_current_release_date/g" > "$baseDir/ccdd-current-release.pgload"
# pgloader "$baseDir/ccdd-current-release.pgload" && rm "$baseDir/ccdd-current-release.pgload"
pgloader "$baseDir/ccdd-current-release.pgload"

# load the data from views into main schema
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-run-views.sql"

# create output folders
mkdir -p "$distDir"
mkdir -p "$QA_changeDir"
mkdir -p "$release_changeDir"


# export CCDD concepts as CSV files to output
# QA release and candidate CSVs
psql -c "copy (select mp_code, mp_formal_name, COALESCE(mp_en_description, 'NA') as mp_en_description, COALESCE(mp_fr_description, 'NA')
        as mp_fr_description, mp_status, mp_status_effective_time, mp_type, \"Health_Canada_identifier\", \"Health_Canada_product_name\" FROM ccdd_mp_release_candidate)
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_qa_release_${ccdd_current_date}.csv"
psql -c "copy (select ntp_code, ntp_formal_name, COALESCE(null::varchar, 'NA') as ntp_en_description, COALESCE(null::varchar, 'NA') as ntp_fr_description, ntp_status, ntp_status_effective_time, COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_release_candidate)
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select tm_code, tm_formal_name, tm_status, tm_status_effective_time FROM ccdd_tm_table)
              to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select mp_code, mp_formal_name, ntp_code, ntp_formal_name, tm_code, tm_formal_name FROM ccdd_mp_ntp_tm_relationship_release_candidate)
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select ccdd_code, ccdd_formal_name, ccdd_type, policy_type, policy_reference, special_groupings_status, special_groupings_status_effective_time from ccdd_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/special_groupings_qa_release_${ccdd_current_date}.csv"
psql -c "copy (select * from release_changes_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_special_groupings.csv"

psql -c "copy (select
               mp_code,
               mp_formal_name,
               COALESCE(mp_en_description, 'NA') as mp_en_description,
               COALESCE(mp_fr_description, 'NA') as mp_fr_description,
               mp_status,
               mp_status_effective_time,
               mp_type,
               \"Health_Canada_identifier\",
               \"Health_Canada_product_name\" FROM ccdd_mp_release_candidate)
))
               to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_release_candidate_${ccdd_current_date}.csv"
psql -c "copy (select
                 ntp_code,
                 ntp_formal_name,
                 COALESCE(null::varchar, 'NA') as ntp_en_description,
                 COALESCE(null::varchar, 'NA') as ntp_fr_description,
                 ntp_status,
                 ntp_status_effective_time,
                 COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_release_candidate)
               to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_release_candidate_${ccdd_current_date}.csv"
psql -c "copy (select tm_code, tm_formal_name, tm_status, tm_status_effective_time FROM ccdd_tm_release_candidate)
         to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_release_candidate_${ccdd_current_date}.csv"

psql -c "copy (select
                mp_code,
                mp_formal_name,
                ntp_code,
                ntp_formal_name,
                tm_code,
                tm_formal_name FROM ccdd_mp_ntp_tm_relationship_release_candidate)
               to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_release_candidate_${ccdd_current_date}.csv"


psql -c "copy (select
               ccdd_code,
               ccdd_formal_name,
               ccdd_type,
               policy_type,
               policy_reference,
               special_groupings_status,
               special_groupings_status_effective_time
               FROM ccdd_special_groupings_release_candidate)
              to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/special_groupings_release_candidate_${ccdd_current_date}.csv"

# copy hand-curated files
cp "$baseDir/test/ccdd-device-ntp-draft.csv" "$distDir/device-ntp_full_release_${ccdd_current_date}.csv"
cp "$baseDir/test/ccdd-coded-attribute-draft.csv" "$distDir/coded_attribute_${ccdd_current_date}.csv"

# extra QA report CSVs
# @todo add more once the team is briefed on the new ones
psql -c "copy (select * from qa_release_changes_mp) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_release_changes_mp_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_mp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_code.csv"
psql -c "copy (select * from qa_mp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_name.csv"
psql -c "copy (select * from qa_ntp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_code.csv"
psql -c "copy (select * from qa_ntp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_name.csv"
psql -c "copy (select * from qa_tm_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_code.csv"
psql -c "copy (select * from qa_tm_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_name.csv"
psql -c "copy (select * from qa_mp_ntp_tm_relationship_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_ntp_tm_relationship_duplicates_code.csv"
cp "$distDir"/*duplicates_name* "$QA_changeDir"
cp "$distDir"/*duplicates_name* "$release_changeDir" # per Jo-anne's request

psql -c "GRANT ALL PRIVILEGES ON DATABASE $PGUSER TO ccdd_owner;"
psql -c "GRANT ALL PRIVILEGES ON SCHEMA public TO ccdd_owner;"
psql -c "GRANT ALL PRIVILEGES ON SCHEMA ccdd TO ccdd_owner;"
psql -c "GRANT ALL PRIVILEGES ON SCHEMA dpd TO ccdd_owner;"
psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO ccdd_owner;"
psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA ccdd TO ccdd_owner;"
psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA dpd TO ccdd_owner;"
NEW_DB_NAME=ccdd_$(date +'%Y_%m_%d_%H%M%S')
# connect to something other that PGUSER because the connected db can't be renamed
psql -d ccdd -c "ALTER DATABASE $PGUSER RENAME TO $NEW_DB_NAME;"
export PGDATABASE=$NEW_DB_NAME

echo
echo Generated  "$PGDATABASE" and output in "$distDir"
