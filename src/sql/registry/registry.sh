#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset
reg_schema="ccdd_history"

schema=`psql -d registry -t -c "select schema_name from information_schema.schemata where schema_name like 'ccdd_%' and schema_name != '$reg_schema'"`
for sch in $schema
do
  psql -d registry -c "drop schema $sch cascade";
done

psql -d registry -c "create schema $PGSCHEMA";
psql -d registry -c "CREATE TABLE $PGSCHEMA.tm_release_candidate(
                        tm_code varchar,
                        tm_formal_name text,
                        tm_status varchar,
                        tm_status_effective_time varchar
                      )";
psql -d registry -c "\COPY $PGSCHEMA.tm_release_candidate FROM '$distDir/tm_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
psql -d registry -c "CREATE TABLE $PGSCHEMA.ntp_release_candidate(
                        ntp_code varchar,
                        ntp_formal_name text,
                        ntp_en_description text,
                        ntp_fr_description text,
                        ntp_status varchar,
                        ntp_status_effective_time varchar,
                        ntp_type varchar
                    )";
psql -d registry -c "\COPY $PGSCHEMA.ntp_release_candidate FROM '$distDir/ntp_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
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
psql -d registry -c "\COPY $PGSCHEMA.mp_release_candidate FROM '$distDir/mp_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
psql -d registry -c "CREATE TABLE $PGSCHEMA.mp_ntp_tm_relationship_release_candidate(
                        mp_code varchar,
                        mp_formal_name text,
                        ntp_code varchar,
                        ntp_formal_name text,
                        tm_code varchar,
                        tm_formal_name text
);"
psql -d registry -c "\COPY $PGSCHEMA.mp_ntp_tm_relationship_release_candidate FROM '$distDir/mp_ntp_tm_relationship_release_candidate_${ccdd_current_date}.csv' delimiter ',' CSV HEADER";
# comparison tables
psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_mp_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        mp_code varchar,
                        mp_formal_name text,
                        changes text
);"
psql -d registry -c "\COPY $PGSCHEMA.release_changes_mp_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_ntp_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        ntp_code varchar,
                        ntp_formal_name text,
                        changes text
);";
psql -d registry -c "\COPY $PGSCHEMA.release_changes_ntp_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_tm_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        tm_code varchar,
                        tm_formal_name text,
                        changes text
);"
psql -d registry -c "\COPY $PGSCHEMA.release_changes_tm_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.release_changes_mp_ntp_tm_relationship_${ccdd_current_date}_from_${ccdd_current_release_date}(
                        mp_code varchar,
                        mp_formal_name text,
                        changes text
);";
psql -d registry -c "\COPY $PGSCHEMA.release_changes_mp_ntp_tm_relationship_${ccdd_current_date}_from_${ccdd_current_release_date} FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp_ntp_tm_relationship.csv' delimiter ',' CSV HEADER";

psql -d registry -c "CREATE TABLE $PGSCHEMA.combination_products(
                      dpd_drug_code bigint NOT NULL,
                      mp_formal_name varchar,
                      ntp_formal_name varchar,
                      ntp_type varchar,
                      CONSTRAINT ccdd_combination_product_pk PRIMARY KEY (dpd_drug_code)
);"
psql -d $PGDATABASE -c 'COPY public.ccdd_combination_product TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.combination_products FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.ingredient_stem(
                      name varchar NOT NULL,
                      CONSTRAINT ingredient_stem_pk PRIMARY KEY (name)
);";
psql -d $PGDATABASE -c 'COPY public.ccdd_ingredient_stem TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.ingredient_stem FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.ntp_dosage_forms(
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
psql -d $PGDATABASE -c 'COPY ccdd.ntp_dosage_forms TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.ntp_dosage_forms FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.unit_of_presentation(
                      drug_code bigint,
                      unit_of_presentation varchar,
                      uop_size varchar,
                      uop_unit_of_measure varchar,
                      calculation varchar,
                      uop_size_insert varchar
);";
psql -d $PGDATABASE -c 'COPY ccdd.unit_of_presentation_csv TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.unit_of_presentation FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.tm_filter(
                      tm_code varchar
);";
psql -d $PGDATABASE -c 'COPY ccdd.tm_filter TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.tm_filter FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.blacklist(
                      drug_code varchar NOT NULL,
                      CONSTRAINT blacklist_pk PRIMARY KEY (drug_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_blacklist TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.blacklist FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.whitelist(
                      drug_code varchar NOT NULL,
                      CONSTRAINT whitelist_pk PRIMARY KEY (drug_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_whitelist TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.whitelist FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.mp_brand_override(
                      drug_code bigint NOT NULL,
                      brand text,
                      CONSTRAINT mp_brand_override_pk PRIMARY KEY (drug_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_brand_override TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.mp_brand_override FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.mp_deprecations(
                      mp_code varchar NOT NULL,
                      CONSTRAINT mp_deprecation_pk PRIMARY KEY (mp_code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.mp_deprecations TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.mp_deprecations FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.ntp_deprecations(
                      code varchar NOT NULL,
                      status_effective_date date NOT NULL,
                      CONSTRAINT ntp_deprecation_pk PRIMARY KEY (code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.ntp_deprecations TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.ntp_deprecations FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.tm_deprecations(
                      code varchar NOT NULL,
                      status_effective_time date NOT NULL,
                      CONSTRAINT tm_deprecation_pk PRIMARY KEY (code)
);";
psql -d $PGDATABASE -c 'COPY ccdd.tm_deprecations TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.tm_deprecations FROM stdin';

psql -d registry -c "CREATE TABLE $PGSCHEMA.special_groupings(
                      ccdd_code varchar NOT NULL,
                      ccdd_formal_name text NOT NULL,
                      ccdd_type varchar,
                      policy_type varchar,
                      policy_reference varchar,
                      special_groupings_status text,
                      special_groupings_status_effective_time text
);";
psql -d $PGDATABASE -c 'COPY ccdd.special_groupings TO stdout' | psql -d registry -c '\COPY '$PGSCHEMA'.special_groupings FROM stdin';

schema_date=$(date +'%Y-%m-%d')
schema_date_ym=$(date +'%Y-%m-')

psql -d registry -c "DELETE from $reg_schema.release_changes_mp where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_mp(mp_code, mp_formal_name, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_mp.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_mp SET date = '$schema_date' WHERE date IS NULL;"

psql -d registry -c "DELETE from $reg_schema.release_changes_ntp where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_ntp(ntp_code, ntp_formal_name, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_ntp.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_ntp SET date = '$schema_date' WHERE date IS NULL;"

psql -d registry -c "DELETE from $reg_schema.release_changes_tm where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_tm(tm_code, tm_formal_name, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_tm.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_tm SET date = '$schema_date' WHERE date IS NULL;"

psql -d registry -c "DELETE from $reg_schema.release_changes_special_groupings where date::text like '$schema_date_ym%'"
psql -d registry -c "\COPY $reg_schema.release_changes_special_groupings(ccdd_code, ccdd_formal_name, ccdd_type, policy_type, policy_reference, special_groupings_status, special_groupings_status_effective_time, changes) FROM '$distDir/${ccdd_current_date}_from_${ccdd_current_release_date}_release_changes_special_groupings.csv' delimiter ',' CSV HEADER";
psql -d registry -c "UPDATE $reg_schema.release_changes_special_groupings SET date = '$schema_date' WHERE date IS NULL;"
