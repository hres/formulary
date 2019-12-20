#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset
reg_schema="ccdd_history"
psql -c "DROP DATABASE IF EXISTS registry"
psql -c "CREATE DATABASE registry"

psql -d registry -c "create schema $reg_schema";

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_mp(
                        mp_code text,
                        mp_formal_name text,
                        mp_fr_description text,
                        changes text,
                        "date" text
);"

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_ntp(
                        ntp_code text,
                        ntp_formal_name text,
                        changes text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_tm(
                        tm_code text,
                        tm_formal_name text,
                        changes text,
                        "date" text
);"

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_special_groupings(
                      ccdd_code text NOT NULL,
                      ccdd_formal_name text NOT NULL,
                      ccdd_type text,
                      policy_type text,
                      policy_reference text,
                      special_groupings_status text,
                      special_groupings_status_effective_time text,
                      changes text,
                      "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.combination_products_csv_changes(
                        dpd_drug_code text NOT NULL,
                        drug_identification_number text,
                        mp_formal_name text,
                        ntp_formal_name text,
                        ntp_type text,
                        change_type text,
                        "date" text
);"

psql -d registry -c "CREATE TABLE $reg_schema.ingredient_stem_csv_changes(
                        ccdd text,
                        top250name text,
                        dpd_ingredient text,
                        ing_stem text,
                        hydrate text,
                        ntp_ing text,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.ntp_dosage_forms_changes(
                        ntp_dosage_form_code text,
                        ntp_dosage_form text,
                        route_of_administration_code text,
                        route_of_administration text,
                        route_of_administration_f text,
                        pharm_form_code text,
                        pharmaceutical_form text,
                        pharmaceutical_form_f text,
                        audit_id text,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.unit_of_presentation_csv_changes(
                        drug_code text,
                        unit_of_presentation text,
                        uop_size text,
                        uop_unit_of_measure text,
                        calculation text,
                        uop_size_insert text,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.tm_filter_changes(
                        tm_code text,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.mp_blacklist_changes(
                        drug_code text NOT NULL,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.mp_whitelist_changes(
                        drug_code text NOT NULL,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.mp_brand_override_changes(
                        drug_code text NOT NULL,
                        brand text,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.mp_deprecations_changes(
                        mp_code text NOT NULL,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.ntp_deprecations_changes(
                        code text NOT NULL,
                        status_effective_date text NOT NULL,
                        change_type text,
                        "date" text
);";

psql -d registry -c "CREATE TABLE $reg_schema.tm_deprecations_changes(
                        code text NOT NULL,
                        status_effective_time text NOT NULL,
                        change_type text,
                        "date" text
);";
