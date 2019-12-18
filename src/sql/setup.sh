#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset

ccdd_qa_release_date="20191106"
ccdd_current_release_date="20191106"
ccdd_current_date=$(date +'%Y%m%d')


baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
distDir="$baseDir/../dist/$ccdd_current_date"

if [ "$PGDATABASE" != '' ]; then
    echo 'Must not specify PGDATABASE'
    false
fi

export PGDATABASE=ccdd_$(date +'%Y_%m_%d_%H%M%S')
ccdd_current_date_time=$(date +'%Y-%m-%d %H:%M:%S')

createdb "$PGDATABASE"

# psql -v ON_ERROR_STOP=1 < dpdloader/dpd_structure.sql # empty schema for testing
# psql -v ON_ERROR_STOP=1 < dpdloader/dpd_constraints.sql # empty schema for testing

# DPD extract load
pgloader "$baseDir/dpdloader/dpdload.pgload"
pgloader "$baseDir/dpdloader/dpdload_ia.pgload"
pgloader "$baseDir/dpdloader/dpdload_dr.pgload"
pgloader "$baseDir/dpdloader/dpdload_ap.pgload"


# dpd_old_database="ccdd_2019_11_01_110923";
# dpd_old_schema="dpd";
# 
# pg_dump $dpd_old_database --schema="$dpd_old_schema" > dpdchanges.sql
# psql -v "$PGDATABASE" < dpdchanges.sql
# 
# 
# psql -c "ALTER SCHEMA $dpd_old_schema RENAME TO dpd_old"
# psql -c "ALTER SCHEMA dpd_temp RENAME TO dpd"
# 
# rm -f dpdchanges.sql


# global config for CCDD generation process
pgloader "$baseDir/ccdd-config.pgload"

db_previous_month=`psql -t -c "SELECT dblist.datname FROM (SELECT datname, make_timestamp(substr(datname, 6,4)::int, substr(datname, 11,2)::int, substr(datname, 14,2)::int, substr(datname, 17,2)::int, substr(datname, 19,2)::int, substr(datname, 21,2)::int) AS date_timestamp FROM pg_database WHERE datistemplate = 'false' AND datname LIKE 'ccdd_%' ORDER BY datname DESC) as dblist
WHERE date_timestamp < date_trunc('month', '$ccdd_current_date_time'::timestamp) LIMIT 1"`
db_previous_month=`echo $db_previous_month | xargs`
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


# pgloader "$baseDir/dpdchanges/ingredient_stem_csv.pgload"
#psql -v ON_ERROR_STOP=1 < dpdchanges/schema.sql


# create output folder, then export CCDD concepts as CSV files to output
mkdir -p "$distDir"

# QA release and candidate CSVs
psql -c "copy ((select mp_code, mp_formal_name, COALESCE(mp_en_description, 'NA') as mp_en_description,mp_fr_description, mp_status, mp_status_effective_time, mp_type, \"Health_Canada_identifier\", \"Health_Canada_product_name\" FROM ccdd_mp_table)
        UNION ALL
        (select * from ccdd.mp_release_candidate where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')))
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_qa_release_${ccdd_current_date}.csv"

psql -c "copy ((select ntp_code, ntp_formal_name, COALESCE(null::varchar, 'NA') as ntp_en_description, ntp_fr_description, ntp_status, ntp_status_effective_time, COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_table)
        UNION ALL
        (select * from ccdd.ntp_release_candidate where ntp_code IN ('9013250')))
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_qa_release_${ccdd_current_date}.csv"

psql -c "copy (select tm_code, tm_formal_name,tm_fr_description, tm_status, tm_status_effective_time FROM ccdd_tm_table
              UNION ALL
              (select * from ccdd.tm_release where tm_code IN ('8001659')))
         to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_qa_release_${ccdd_current_date}.csv"

psql -c "copy ((select mp_code, mp_formal_name, ntp_code, ntp_formal_name, tm_code, tm_formal_name FROM ccdd_mp_ntp_tm_relationship)
        UNION ALL
        (select * from ccdd.mp_ntp_tm_relationship_release_candidate where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')))
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_qa_release_${ccdd_current_date}.csv"

psql -c "copy ((select mp_code, mp_fr_description, ntp_code, ntp_fr_description, tm_code, tm_fr_description FROM ccdd_mp_ntp_tm_relationship)
        UNION ALL
        (select * from ccdd.mp_ntp_tm_relationship_release_candidate where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777')))
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_qa_release_fr_${ccdd_current_date}.csv"
psql -c "copy (select ccdd_code, ccdd_formal_name, ccdd_type, policy_type, policy_reference, special_groupings_status, special_groupings_status_effective_time from ccdd_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/special_groupings_qa_release_${ccdd_current_date}.csv"
psql -c "copy (select * from release_changes_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_special_groupings.csv"

psql -c "copy ((select
                mp_code,
                mp_formal_name,
                COALESCE(mp_en_description, 'NA') as mp_en_description,
                mp_fr_description,
                mp_status,
                mp_status_effective_time,
                mp_type,
                \"Health_Canada_identifier\",
                \"Health_Canada_product_name\" FROM ccdd_mp_table WHERE tm_is_publishable = true)
                
                UNION ALL (select * from ccdd.mp_release_candidate where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')
                )) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_full_release_${ccdd_current_date}.csv"


psql -c "copy ((select
                  ntp_code,
                  ntp_formal_name,
                  COALESCE(null::varchar, 'NA') as ntp_en_description,
                  ntp_fr_description,
                  ntp_status,
                  ntp_status_effective_time,
                  COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_table WHERE tm_is_publishable = true)
                  UNION ALL (select * from ccdd.ntp_release_candidate where ntp_code IN ('9013250')))
                  to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_full_release_${ccdd_current_date}.csv"
     
psql -c "copy ((select tm_code, tm_formal_name,tm_fr_description,tm_status, tm_status_effective_time FROM ccdd_tm_table WHERE tm_is_publishable = true)
         UNION ALL
         (select * from ccdd.tm_release_candidate where tm_code IN ('8001659')))
         to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_full_release_${ccdd_current_date}.csv"


psql -c "copy ((select
                mp_code,
                mp_formal_name,
                ntp_code,
                ntp_formal_name,
                tm_code,
                tm_formal_name FROM ccdd_mp_ntp_tm_relationship WHERE tm_is_publishable = true)
                UNION ALL
                (select * from ccdd.mp_ntp_tm_relationship_release_candidate where mp_code IN ('02212188', '02480360','02480379','02182971','02182777','01916947'))) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_release_candidate_${ccdd_current_date}.csv"

psql -c "copy ((select
                mp_code,
                mp_fr_description,
                ntp_code,
                ntp_fr_description,
                tm_code,
                tm_fr_description
                FROM ccdd_mp_ntp_tm_relationship WHERE tm_is_publishable = true)
                UNION ALL (select * from ccdd.mp_ntp_tm_relationship_release_candidate_fr where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')))
                to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_fr_${ccdd_current_date}.csv"

   

psql -c "copy ((
          select ccdd_code, ccdd_formal_name, ccdd_type, policy_type, policy_reference, special_groupings_status, special_groupings_status_effective_time from ccdd_special_groupings WHERE tm_is_publishable = true)
          UNION ALL
          (
            select cur.ccdd_code, cur.ccdd_formal_name, cur.ccdd_type, cur.policy_type::int, cur.policy_reference, 'Inactive' as special_groupings_status,
            cur.special_groupings_status_effective_time from ccdd.special_groupings cur
            WHERE not exists (SELECT 1 from ccdd_special_groupings nxt WHERE (nxt.ccdd_code = cur.ccdd_code AND CAST(nxt.policy_type as text) = cur.policy_type)))
          )
          to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/special_groupings_release_candidate_${ccdd_current_date}.csv"

# copy hand-curated files
cp "$baseDir/test/ccdd-device-ntp-draft.csv" "$distDir/device-ntp_full_release_${ccdd_current_date}.csv"
cp "$baseDir/test/ccdd-coded-attribute-draft.csv" "$distDir/coded_attribute_${ccdd_current_date}.csv"

# extra QA report CSVs
# @todo add more once the team is briefed on the new ones
psql -c "copy (select * from qa_release_changes_mp WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp WHERE ntp_code NOT IN ('9013250')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_release_changes_mp_release_candidate WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp_release_candidate WHERE ntp_code NOT IN ('9013250')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship_release_candidate WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship_release_candidate_fr WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship_fr.csv"
psql -c "copy (select * from qa_mp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_code.csv"
psql -c "copy (select * from qa_mp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_name.csv"
psql -c "copy (select * from qa_ntp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_code.csv"
psql -c "copy (select * from qa_ntp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_name.csv"
psql -c "copy (select * from qa_tm_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_code.csv"
psql -c "copy (select * from qa_tm_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_name.csv"
psql -c "copy (select * from qa_mp_ntp_tm_relationship_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_ntp_tm_relationship_duplicates_code.csv"
psql -c "copy (select * from public.post_qa_relationship) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_post_qa_relationship_table.csv"

echo
echo Generated "$PGDATABASE" and output in "$distDir"

export PGSCHEMA=ccdd_$(date +'%Y_%m_%d')

export distDir ccdd_current_date ccdd_current_release_date

### Registry code export
./registry/registry.sh
