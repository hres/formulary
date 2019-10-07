#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset
reg_schema="ccdd_history"
psql -c "SELECT 1 FROM pg_database WHERE datname = 'registry'" | grep -q 1 || psql -c "CREATE DATABASE registry"

psql -d registry -c "create schema $reg_schema";

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_mp(
                        mp_code varchar,
                        mp_formal_name text,
                        changes text,
                        "date" date
);"

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_ntp(
                        ntp_code varchar,
                        ntp_formal_name text,
                        changes text,
                        "date" date
);";

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_tm(
                        tm_code varchar,
                        tm_formal_name text,
                        changes text,
                        "date" date
);"

psql -d registry -c "CREATE TABLE $reg_schema.release_changes_special_groupings(
                      ccdd_code varchar NOT NULL,
                      ccdd_formal_name text NOT NULL,
                      ccdd_type varchar,
                      policy_type varchar,
                      policy_reference varchar,
                      special_groupings_status text,
                      special_groupings_status_effective_time text,
                      changes text,
                      "date" date
);";
