#!/bin/bash -e
###############################################################################
# FILE              : setup.sh
# USAGE             : PGHOST=testhost PGUSER=testuser PGPASSWORD=testpassword ./setup.sh qa
# DESCRIPTION       : Generates CCDD database.
# REQUIREMENTS      : Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset.
# ARGS (optional)   : qa
###############################################################################

ccdd_qa_release_date="20240501"
ccdd_current_release_date="20240501"
db_previous_month="ccdd_2024_05_01_172546"
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

# load opioid table
psql -c "ALTER TABLE dpd.opioid ALTER COLUMN extract SET DEFAULT NULL;"
psql -c "\\copy dpd.opioid (drug_code) FROM '$baseDir/../pgloaded/opioids.csv' CSV;"

echo $db_previous_month
if [ -z "$db_previous_month" ]
then
      echo "No Previous Month Database"
else
      export db_previous_month
fi

# CCDD schema and source data
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-csv.sql"

psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-instance-structure.sql"
pgloader "$baseDir/ccdd-inputs.pgload"
pgloader "$baseDir/ccdd-current-release.pgload"

# load the data from views into main schema
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-run-views.sql"

# create output folders
mkdir -p "$distDir"
mkdir -p "$QA_changeDir"
mkdir -p "$release_changeDir"

# Check for QA flag in arguments
if [ $# -gt 0 ] && [ $1 = "qa" ];
  then
    echo "QA FLAG PRESENT"
    mkdir -p "$distDir/DPD_diff"

    # START dpd import from old database
    dpd_old_database=$db_previous_month;
    dpd_old_schema="dpd";
    pg_dump $dpd_old_database --schema="$dpd_old_schema" --no-owner > dpd_old.sql
    psql -c "ALTER SCHEMA $dpd_old_schema RENAME TO dpd_temp"
    psql -v "$PGDATABASE" < dpd_old.sql
    psql -c "ALTER SCHEMA dpd RENAME TO dpd_old"
    psql -c "ALTER SCHEMA dpd_temp RENAME TO $dpd_old_schema"
    rm -f dpd_old.sql
    # DONE dpd import from old database

    # Find dpd changes and export into dpd_changes schema
    psql -v ON_ERROR_STOP=1 < dpdchanges/schema.sql
else
    echo "WRONG/NO FLAG"
fi

# export CCDD concepts as CSV files to output
# QA release and candidate CSVs
psql -c "copy (select mp_code, mp_formal_name, COALESCE(mp_en_description, 'NA') as mp_en_description,mp_fr_description, mp_status, mp_status_effective_time, mp_type, \"Health_Canada_identifier\", \"Health_Canada_product_name\" FROM ccdd_mp_release_candidate)
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select ntp_code, ntp_formal_name, COALESCE(null::varchar, 'NA') as ntp_en_description, ntp_fr_description, ntp_status, ntp_status_effective_time, COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_release_candidate)
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select tm_code, tm_formal_name,tm_fr_description, tm_status, tm_status_effective_time FROM ccdd_tm_release_candidate)
              to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select mp_code, mp_formal_name, ntp_code, ntp_formal_name, tm_code, tm_formal_name FROM ccdd_mp_ntp_tm_relationship_release_candidate)
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select mp_code, mp_fr_description, ntp_code, ntp_fr_description, tm_code, tm_fr_description FROM ccdd_mp_ntp_tm_relationship_release_candidate)
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_qa_release_fr_${ccdd_current_date}.csv"
psql -c "copy (select ccdd_code, ccdd_formal_name, ccdd_type, policy_type, policy_reference, special_groupings_status, special_groupings_status_effective_time from ccdd_special_groupings_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/special_groupings_qa_release_${ccdd_current_date}.csv"
psql -c "copy (select * from release_changes_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_special_groupings.csv"

psql -c "copy (select
               mp_code,
               mp_formal_name,
               COALESCE(mp_en_description, 'NA') as mp_en_description,
               mp_fr_description,
               mp_status,
               mp_status_effective_time,
               mp_type,
               \"Health_Canada_identifier\",
               \"Health_Canada_product_name\" FROM ccdd_mp_release_candidate)
               to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_full_release_${ccdd_current_date}.csv"
psql -c "copy (select
                 ntp_code,
                 ntp_formal_name,
                 COALESCE(null::varchar, 'NA') as ntp_en_description,
                 ntp_fr_description,
                 ntp_status,
                 ntp_status_effective_time,
                 COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_release_candidate)
              to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_full_release_${ccdd_current_date}.csv"

psql -c "copy (select tm_code, tm_formal_name,tm_fr_description,tm_status, tm_status_effective_time FROM ccdd_tm_release_candidate)
         to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_full_release_${ccdd_current_date}.csv"

psql -c "copy (select
                mp_code,
                mp_formal_name,
                ntp_code,
                ntp_formal_name,
                tm_code,
                tm_formal_name FROM ccdd_mp_ntp_tm_relationship_release_candidate)
               to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_release_candidate_${ccdd_current_date}.csv"

psql -c "copy (select
               mp_code,
               mp_fr_description,
               ntp_code,
               ntp_fr_description,
               tm_code,
               tm_fr_description
               FROM ccdd_mp_ntp_tm_relationship_release_candidate)
              to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_fr_${ccdd_current_date}.csv"

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
psql -c "copy (select * from qa_release_changes_mp) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_release_changes_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$QA_changeDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_special_groupings.csv"
psql -c "copy (select * from qa_release_changes_mp_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship_release_candidate_fr) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$release_changeDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship_fr.csv"
psql -c "copy (select * from qa_mp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_code.csv"
psql -c "copy (select * from qa_mp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_name.csv"
psql -c "copy (select * from qa_ntp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_code.csv"
psql -c "copy (select * from qa_ntp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_name.csv"
psql -c "copy (select * from qa_tm_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_code.csv"
psql -c "copy (select * from qa_tm_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_name.csv"
psql -c "copy (select * from qa_mp_ntp_tm_relationship_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_ntp_tm_relationship_duplicates_code.csv"
cp "$distDir"/*duplicates_name* "$QA_changeDir"
cp "$distDir"/*duplicates_name* "$release_changeDir" # per Jo-anne's request
psql -c "copy (select * from public.post_qa_relationship) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_post_qa_relationship_table.csv"


### Export DPD diff files during QA generation:
if [ $# -gt 0 ] && [ $1 = "qa" ];
  then
    echo "output DPD diff files"
    psql -c "copy (select * from dpd_changes.active_ingredient_changes) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/DPD_diff/${ccdd_current_date}_dpd_ing_changes.csv"
    psql -c "copy (select * from dpd_changes.companies_changes) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/DPD_diff/${ccdd_current_date}_dpd_companies_changes.csv"
    psql -c "copy (select * from dpd_changes.drug_product_changes) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/DPD_diff/${ccdd_current_date}_dpd_product_changes.csv"
    psql -c "copy (select * from dpd_changes.pharm_changes) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/DPD_diff/${ccdd_current_date}_dpd_form_changes.csv"
    psql -c "copy (select * from dpd_changes.route_changes) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/DPD_diff/${ccdd_current_date}_dpd_route_changes.csv"
    psql -c "copy (select * from dpd_changes.status_changes) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/DPD_diff/${ccdd_current_date}_dpd_status_changes.csv"

else
    echo "WRONG/NO FLAG"
    echo "DPD diff files not exported"
fi

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
