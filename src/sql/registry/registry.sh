#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset
reg_schema="ccdd_history"
CCDD_SCHEMA="CCDD"
# echo $db_previous_month

echo "----------------- START REGISTRY UPDATE-----------------"
schema=`psql -d registry -t -c "select schema_name from information_schema.schemata where schema_name like 'ccdd_%' and schema_name != '$reg_schema'"`
for sch in $schema
do
  psql -d registry -c "drop schema $sch cascade";
done

psql -d registry -c "create schema $PGSCHEMA";
psql -d registry -c "CREATE TABLE $PGSCHEMA.tm_release_candidate(
                        tm_code varchar,
                        tm_formal_name text,
                        tm_fr_description text,
                        tm_status varchar,
                        tm_status_effective_time varchar
                      )";
psql -d registry -c "\COPY $PGSCHEMA.tm_release_candidate FROM '$distDir/tm_full_release_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.ntp_release_candidate(
                        ntp_code varchar,
                        ntp_formal_name text,
                        ntp_en_description text,
                        ntp_fr_description text,
                        ntp_status varchar,
                        ntp_status_effective_time varchar,
                        ntp_type varchar
                    )";
psql -d registry -c "\COPY $PGSCHEMA.ntp_release_candidate FROM '$distDir/ntp_full_release_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.mp_release_candidate(
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
psql -d registry -c "\COPY $PGSCHEMA.mp_release_candidate FROM '$distDir/mp_full_release_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.mp_ntp_tm_relationship_release_candidate(
                        mp_code varchar,
                        mp_formal_name text,
                        ntp_code varchar,
                        ntp_formal_name text,
                        tm_code varchar,
                        tm_formal_name text
);"
psql -d registry -c "\COPY $PGSCHEMA.mp_ntp_tm_relationship_release_candidate FROM '$distDir/mp_ntp_tm_relationship_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.mp_ntp_tm_relationship_release_candidate_fr(
                        mp_code varchar,
                        mp_fr_description text,
                        ntp_code varchar,
                        ntp_fr_description text,
                        tm_code varchar,
                        tm_fr_description text
);"
psql -d registry -c "\COPY $PGSCHEMA.mp_ntp_tm_relationship_release_candidate_fr FROM '$distDir/mp_ntp_tm_relationship_fr_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";

# comparison tables
psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_mp_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        mp_code varchar,
                        mp_formal_name text,
                        mp_fr_description text,
                        changes text
);"
psql -d registry -c "\COPY $PGSCHEMA.release_changes_mp_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_ntp_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        ntp_code varchar,
                        ntp_formal_name text,
                        ntp_fr_description text,
                        changes text
);";
psql -d registry -c "\COPY $PGSCHEMA.release_changes_ntp_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_tm_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        tm_code varchar,
                        tm_formal_name text,
                        tm_fr_description text,
                        changes text
);"
psql -d registry -c "\COPY $PGSCHEMA.release_changes_tm_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_mp_ntp_tm_rltnship_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        mp_code varchar,
                        mp_formal_name text,
                        changes text
);";
psql -d registry -c "\COPY $PGSCHEMA.release_changes_mp_ntp_tm_rltnship_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_mp_ntp_tm_rltnship_fr_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        mp_code varchar,
                        mp_fr_description text,
                        ntp_fr_description text,
                        tm_fr_description text, 
                        changes text
);";
psql -d registry -c "\COPY $PGSCHEMA.release_changes_mp_ntp_tm_rltnship_fr_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship_fr.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_special_groupings_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        ccdd_code varchar,
                        ccdd_formal_name text,
                        ccdd_type text,
                        policy_type text,
                        policy_reference text,
                        special_groupings_status text,
                        special_groupings_status_effective_time text, 
                        changes text
);";
psql -d registry -c "\COPY $PGSCHEMA.release_changes_special_groupings_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_special_groupings.csv' delimiter ',' CSV HEADER";

echo "-----------------DUMP schema with data-----------------"
pg_dump -d $PGDATABASE --schema=ccdd -t ccdd.combination_products_csv -t ccdd.ingredient_stem_csv -t ccdd.ntp_dosage_forms -t ccdd.unit_of_presentation_csv -t ccdd.tm_filter -t ccdd.mp_blacklist -t ccdd.mp_whitelist -t ccdd.mp_brand_override -t ccdd.mp_deprecations -t ccdd.ntp_deprecations -t ccdd.tm_deprecations -t ccdd.special_groupings > temp_dump.sql
echo "-----------------DONE DUMP-----------------"
psql -d registry -c "DROP schema if exists ccdd cascade";
psql -d registry -c "CREATE schema ccdd";
echo "-----------------RESTORE dump to registry-----------------"
psql -d registry < temp_dump.sql
echo "-----------------DONE RESTORE dump to registry-----------------"
rm temp_dump.sql

echo "-----------------ALTERING TABLE SCHEMAS-----------------"
psql -d registry -c "ALTER TABLE ccdd.combination_products_csv SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.ingredient_stem_csv SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.ntp_dosage_forms SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.unit_of_presentation_csv SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.tm_filter SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.mp_blacklist SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.mp_whitelist SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.mp_brand_override SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.mp_deprecations SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.ntp_deprecations SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.tm_deprecations SET SCHEMA $PGSCHEMA";
psql -d registry -c "ALTER TABLE ccdd.special_groupings SET SCHEMA $PGSCHEMA";
echo "-----------------DONE ALTER-----------------"
psql -d registry -c "DROP schema if exists ccdd cascade";

schema_date=$(date +'%Y-%m-%d')
schema_date_ym=$(date +'%Y-%m-')

echo "-----------------UPDATING RELEASE CHANGES TABLES IN CCDD_HISTORY SCHEMA-----------------"
psql -d registry -c "DELETE from $reg_schema.release_changes_mp where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_mp(mp_code, mp_formal_name, mp_fr_description, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_mp SET date = '$schema_date' WHERE date IS NULL;"

psql -d registry -c "DELETE from $reg_schema.release_changes_ntp where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_ntp(ntp_code, ntp_formal_name, ntp_fr_description, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_ntp SET date = '$schema_date' WHERE date IS NULL;"

psql -d registry -c "DELETE from $reg_schema.release_changes_tm where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_tm(tm_code, tm_formal_name, tm_fr_description, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_tm SET date = '$schema_date' WHERE date IS NULL;"

psql -d registry -c "DELETE from $reg_schema.release_changes_special_groupings where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_special_groupings(ccdd_code, ccdd_formal_name, ccdd_type, policy_type, policy_reference, special_groupings_status, special_groupings_status_effective_time, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_special_groupings.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_special_groupings SET date = '$schema_date' WHERE date IS NULL;"
echo "----------------- DONE UPDATING RELEASE CHANGES TABLES IN CCDD_HISTORY SCHEMA-----------------"

psql -d registry -c "DROP schema if exists ccdd cascade";
psql -d registry -c "CREATE schema ccdd";

echo "----------------- START DUMPING CCDD TABLES INTO REGISTRY-----------------"
pg_dump -t ccdd.combination_products_csv -d $db_previous_month > t1.sql
psql -d registry < ./t1.sql
pg_dump -t ccdd.ingredient_stem_csv -d $db_previous_month > t2.sql
psql -d registry < ./t2.sql
pg_dump -t ccdd.ntp_dosage_forms -d $db_previous_month > t3.sql
psql -d registry < ./t3.sql
pg_dump -t ccdd.unit_of_presentation_csv -d $db_previous_month > t4.sql
psql -d registry < ./t4.sql
pg_dump -t ccdd.tm_filter -d $db_previous_month > t5.sql
psql -d registry < ./t5.sql
pg_dump -t ccdd.mp_blacklist -d $db_previous_month > t6.sql
psql -d registry < ./t6.sql
pg_dump -t ccdd.mp_whitelist -d $db_previous_month > t7.sql
psql -d registry < ./t7.sql
pg_dump -t ccdd.mp_brand_override -d $db_previous_month > t8.sql
psql -d registry < ./t8.sql
pg_dump -t ccdd.mp_deprecations -d $db_previous_month > t9.sql
psql -d registry < ./t9.sql
pg_dump -t ccdd.ntp_deprecations -d $db_previous_month > t10.sql
psql -d registry < ./t10.sql
pg_dump -t ccdd.tm_deprecations -d $db_previous_month > t11.sql
psql -d registry < ./t11.sql
echo "----------------- DONE DUMPING CCDD TABLES INTO REGISTRY-----------------"

# REMOVE UN-NEEDED SQL FILES
rm t1.sql t2.sql t3.sql t4.sql t5.sql t6.sql t7.sql t8.sql t9.sql t10.sql t11.sql

declare -a arr=("combination_products_csv_changes" "ingredient_stem_csv_changes" "ntp_dosage_forms_changes" "unit_of_presentation_csv_changes" "tm_filter_changes" "mp_blacklist_changes" "mp_whitelist_changes" "mp_brand_override_changes" "mp_deprecations_changes" "ntp_deprecations_changes" "tm_deprecations_changes")

for i in "${arr[@]}"
do
  echo $reg_schema.$i
  psql -d registry -c "DELETE from $reg_schema.$i where date like '$schema_date_ym%'"
done

psql -v v1='ccdd' -v v2=$PGSCHEMA -d registry < ./registry/source_changes.sql
for i in "${arr[@]}"
do
  psql -d registry -c "UPDATE $reg_schema.$i SET date = '$schema_date' WHERE date IS NULL;"
done
psql -d registry -c "DROP schema if exists ccdd cascade";
echo "----------------- DONE REGISTRY UPDATE-----------------"
