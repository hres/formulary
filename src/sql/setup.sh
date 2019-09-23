#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset

ccdd_qa_release_date="20190801"
ccdd_current_release_date="20190806"
ccdd_current_date=$(date +'%Y%m%d')


baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
distDir="$baseDir/../dist/$ccdd_current_date"

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
sed -e "s/%QA_DATE%/$ccdd_qa_release_date/g" "$baseDir/ccdd-current-release.pgload.template" | sed -e "s/%RELEASE_DATE%/$ccdd_current_release_date/g" > "$baseDir/ccdd-current-release.pgload"
pgloader "$baseDir/ccdd-current-release.pgload" && rm "$baseDir/ccdd-current-release.pgload"

# load the data from views into main schema
psql -v ON_ERROR_STOP=1 < "$baseDir/ccdd-run-views.sql"

# create output folder, then export CCDD concepts as CSV files to output
mkdir -p "$distDir"

# QA release and candidate CSVs
psql -c "copy ((select mp_code, mp_formal_name, COALESCE(mp_en_description, 'NA') as mp_en_description, COALESCE(mp_fr_description, 'NA')
        as mp_fr_description, mp_status, mp_status_effective_time, mp_type, \"Health_Canada_identifier\", \"Health_Canada_product_name\" FROM ccdd_mp_table)
        UNION ALL
        (select * from ccdd.mp_release_candidate where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777','01916947','00887056')))
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_qa_release_${ccdd_current_date}.csv"
psql -c "copy ((select ntp_code, ntp_formal_name, COALESCE(null::varchar, 'NA') as ntp_en_description, COALESCE(null::varchar, 'NA') as ntp_fr_description, ntp_status, ntp_status_effective_time, COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_table)
        UNION ALL
        (select * from ccdd.ntp_release_candidate where ntp_code IN ('9013250')))
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_qa_release_${ccdd_current_date}.csv"
psql -c "copy ((select tm_code, tm_formal_name, tm_status, tm_status_effective_time FROM ccdd_tm_table)
               UNION ALL
              (select * from ccdd.tm_release where tm_code IN ('8001659')))
              to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_qa_release_${ccdd_current_date}.csv"
psql -c "copy ((select mp_code, mp_formal_name, ntp_code, ntp_formal_name, tm_code, tm_formal_name FROM ccdd_mp_ntp_tm_relationship)
        UNION ALL
        (select * from ccdd.mp_ntp_tm_relationship_release_candidate where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777','01916947','00887056')))
        to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_qa_release_${ccdd_current_date}.csv"
psql -c "copy (select ccdd_code, ccdd_formal_name, ccdd_type, policy_type, policy_reference, special_groupings_status, special_groupings_status_effective_time from ccdd_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/special_groupings_qa_release_${ccdd_current_date}.csv"
psql -c "copy (select * from release_changes_special_groupings) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_special_groupings.csv"

psql -c "copy ((select
                mp_code,
                mp_formal_name,
                COALESCE(mp_en_description, 'NA') as mp_en_description,
                COALESCE(mp_fr_description, 'NA') as mp_fr_description,
                mp_status,
                mp_status_effective_time,
                mp_type,
                \"Health_Canada_identifier\",
                \"Health_Canada_product_name\" FROM ccdd_mp_table WHERE tm_is_publishable = true)
                UNION ALL
                (select * from ccdd.mp_release_candidate where mp_code IN ('02212188', '02480360', '02480379','02182971','02182777','01916947','00887056'))) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_release_candidate_${ccdd_current_date}.csv"
psql -c "copy ((select
                  ntp_code,
                  ntp_formal_name,
                  COALESCE(null::varchar, 'NA') as ntp_en_description,
                  COALESCE(null::varchar, 'NA') as ntp_fr_description,
                  ntp_status,
                  ntp_status_effective_time,
                  COALESCE(ntp_type, 'NA') as ntp_type FROM ccdd_ntp_table WHERE tm_is_publishable = true)
                  UNION ALL
                  (select * from ccdd.ntp_release_candidate where ntp_code IN ('9013250'))
                ) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/ntp_release_candidate_${ccdd_current_date}.csv"
psql -c "copy ((select tm_code, tm_formal_name, tm_status, tm_status_effective_time FROM ccdd_tm_table WHERE tm_is_publishable = true)
          UNION ALL
         (select * from ccdd.tm_release where tm_code IN ('8001659')))
         to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/tm_release_candidate_${ccdd_current_date}.csv"
psql -c "copy ((select
                mp_code,
                mp_formal_name,
                ntp_code,
                ntp_formal_name,
                tm_code,
                tm_formal_name FROM ccdd_mp_ntp_tm_relationship WHERE tm_is_publishable = true)
                UNION ALL
                (select * from ccdd.mp_ntp_tm_relationship_release_candidate where mp_code IN ('02212188', '02480360','02480379','02182971','02182777','01916947','00887056'))
                ) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/mp_ntp_tm_relationship_release_candidate_${ccdd_current_date}.csv"
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
psql -c "copy (select * from qa_release_changes_mp WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947','00887056')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp WHERE ntp_code NOT IN ('9013250')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947','00887056')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_release_changes_mp_release_candidate WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947','00887056')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv"
psql -c "copy (select * from qa_release_changes_ntp_release_candidate WHERE ntp_code NOT IN ('9013250')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv"
psql -c "copy (select * from qa_release_changes_tm_release_candidate) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv"
psql -c "copy (select * from qa_release_changes_mp_ntp_tm_relationship_release_candidate WHERE mp_code NOT IN ('02212188', '02480360', '02480379','02182971','02182777','01916947','00887056')) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship.csv"
psql -c "copy (select * from qa_mp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_code.csv"
psql -c "copy (select * from qa_mp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_duplicates_name.csv"
psql -c "copy (select * from qa_ntp_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_code.csv"
psql -c "copy (select * from qa_ntp_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_ntp_duplicates_name.csv"
psql -c "copy (select * from qa_tm_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_code.csv"
psql -c "copy (select * from qa_tm_duplicates_name) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_tm_duplicates_name.csv"
psql -c "copy (select * from qa_mp_ntp_tm_relationship_duplicates_code) to STDOUT with CSV HEADER FORCE QUOTE * NULL 'NA' DELIMITER ',';" > "$distDir/${ccdd_current_date}_mp_ntp_tm_relationship_duplicates_code.csv"


echo
echo Generated "$PGDATABASE" and output in "$distDir"


### Registry code export
psql -c "SELECT 1 FROM pg_database WHERE datname = 'registry'" | grep -q 1 || psql -c "CREATE DATABASE registry"

psql -d registry -c "create schema $PGDATABASE";
psql -d registry -c "CREATE TABLE $PGDATABASE.tm_release_candidate(
                        tm_code varchar,
                        tm_formal_name text,
                        tm_status varchar,
                        tm_status_effective_time varchar
                      )";
psql -d registry -c "\COPY $PGDATABASE.tm_release_candidate FROM '$distDir/tm_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
psql -d registry -c "CREATE TABLE $PGDATABASE.ntp_release_candidate(
                        ntp_code varchar,
                        ntp_formal_name text,
                        ntp_en_description text,
                        ntp_fr_description text,
                        ntp_status varchar,
                        ntp_status_effective_time varchar,
                        ntp_type varchar
                    )";
psql -d registry -c "\COPY $PGDATABASE.ntp_release_candidate FROM '$distDir/ntp_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
psql -d registry -c "CREATE TABLE $PGDATABASE.mp_release_candidate(
                        mp_code varchar,
                        mp_formal_name text,
                        mp_en_description text,
                        mp_fr_description text,
                        mp_status varchar,
                        mp_status_effective_time varchar,
                        mp_type varchar,
                        "Health_Canada_identifier" text,
                        "Health_Canada_product_name" text
);"
psql -d registry -c "\COPY $PGDATABASE.mp_release_candidate FROM '$distDir/mp_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
psql -d registry -c "CREATE TABLE $PGDATABASE.mp_ntp_tm_relationship_release_candidate(
                        mp_code varchar,
                        mp_formal_name text,
                        ntp_code varchar,
                        ntp_formal_name text,
                        tm_code varchar,
                        tm_formal_name text
);"
psql -d registry -c "\COPY $PGDATABASE.mp_ntp_tm_relationship_release_candidate FROM '$distDir/mp_ntp_tm_relationship_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
# comparison tables
psql -d registry -c "CREATE TABLE $PGDATABASE.release_changes_mp_${ccdd_current_date}_from_${ccdd_qa_release_date}(
                        mp_code varchar,
                        mp_formal_name text,
                        changes text
);"
psql -d registry -c "\COPY $PGDATABASE.release_changes_mp_${ccdd_current_date}_from_${ccdd_qa_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGDATABASE.release_changes_ntp_${ccdd_current_date}_from_${ccdd_qa_release_date}(
                        ntp_code varchar,
                        ntp_formal_name text,
                        changes text
);";
psql -d registry -c "\COPY $PGDATABASE.release_changes_ntp_${ccdd_current_date}_from_${ccdd_qa_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_ntp.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGDATABASE.release_changes_tm_${ccdd_current_date}_from_${ccdd_qa_release_date}(
                        tm_code varchar,
                        tm_formal_name text,
                        changes text
);"
psql -d registry -c "\COPY $PGDATABASE.release_changes_tm_${ccdd_current_date}_from_${ccdd_qa_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_tm.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGDATABASE.release_changes_mp_ntp_tm_relationship_${ccdd_current_date}_from_${ccdd_qa_release_date}(
                        mp_code varchar,
                        mp_formal_name text,
                        changes text
);";
psql -d registry -c "\COPY $PGDATABASE.release_changes_mp_ntp_tm_relationship_${ccdd_current_date}_from_${ccdd_qa_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_qa_release_date}_qa_release_changes_mp_ntp_tm_relationship.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGDATABASE.combination_products(
                      dpd_drug_code bigint NOT NULL,
                      mp_formal_name varchar,
                      ntp_formal_name varchar,
                      ntp_type varchar,
                      CONSTRAINT ccdd_combination_product_pk PRIMARY KEY (dpd_drug_code)
);"
psql -d $PGDATABASE -c 'COPY public.ccdd_combination_product TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.combination_products FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.ingredient_stem(
                      name varchar NOT NULL,
                      CONSTRAINT ingredient_stem_pk PRIMARY KEY (name)
);";
psql -d $PGDATABASE -c 'COPY public.ccdd_ingredient_stem TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.ingredient_stem FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.ntp_dosage_forms(
                      ntp_dosage_form_code bigint,
                      ntp_dosage_form text,
                      route_of_administration_code text,
                      route_of_administration text,
                      route_of_administration_f text,
                      pharm_form_code text,
                      pharmaceutical_form text,
                      pharmaceutical_form_f text,
                      audit_id bigint
);";
psql -d $PGDATABASE -c 'COPY ccdd.ntp_dosage_forms TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.ntp_dosage_forms FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.unit_of_presentation(
                      drug_code bigint,
                      unit_of_presentation varchar,
                      uop_size varchar,
                      uop_unit_of_measure varchar,
                      calculation varchar,
                      uop_size_insert varchar
);";
psql -d $PGDATABASE -c 'COPY ccdd.unit_of_presentation_csv TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.unit_of_presentation FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.tm_filter(
                      tm_code varchar
);";
psql -d $PGDATABASE -c 'COPY ccdd.tm_filter TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.tm_filter FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.blacklist(
                      drug_code varchar NOT NULL,
                      CONSTRAINT blacklist_pk PRIMARY KEY (drug_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_blacklist TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.blacklist FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.whitelist(
                      drug_code varchar NOT NULL,
                      CONSTRAINT whitelist_pk PRIMARY KEY (drug_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_whitelist TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.whitelist FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.mp_brand_override(
                      drug_code bigint NOT NULL,
                      brand text,
                      CONSTRAINT mp_brand_override_pk PRIMARY KEY (drug_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_brand_override TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.mp_brand_override FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.mp_deprecations(
                      mp_code varchar NOT NULL,
                      CONSTRAINT mp_deprecation_pk PRIMARY KEY (mp_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_deprecations TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.mp_deprecations FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.ntp_deprecations(
                      code varchar NOT NULL,
                      status_effective_date date NOT NULL,
                      CONSTRAINT ntp_deprecation_pk PRIMARY KEY (code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.ntp_deprecations TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.ntp_deprecations FROM stdin';

psql -d registry -c "CREATE TABLE $PGDATABASE.tm_deprecations(
                      code varchar NOT NULL,
                      status_effective_time date NOT NULL,
                      CONSTRAINT tm_deprecation_pk PRIMARY KEY (code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.tm_deprecations TO stdout' | psql -d registry -c '\COPY '$PGDATABASE'.tm_deprecations FROM stdin';
