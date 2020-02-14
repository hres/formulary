#!/bin/bash -e
DEFAULT_SCHEMA=dpd
TEMP_SCHEMA=dpd_temp

echo "----------------- START DPD UPDTAE-----------------"
# rename original table
psql -d registry -c "ALTER SCHEMA $DEFAULT_SCHEMA RENAME TO $TEMP_SCHEMA"

# create new dpd schema with record
./setup/dpd_setup/dpd_import.sh

# create ccdd_ columns in new dpd table
psql -d registry -c "ALTER TABLE $DEFAULT_SCHEMA.active_ingredient ADD COLUMN ccdd_ingredient TEXT, ADD COLUMN ccdd_strength TEXT"
psql -d registry -c "ALTER TABLE $DEFAULT_SCHEMA.route ADD COLUMN ccdd_route_of_administration TEXT"
psql -d registry -c "ALTER TABLE $DEFAULT_SCHEMA.pharmaceutical_form ADD COLUMN ccdd_pharmaceutical_form TEXT"

# override ccdd_ columns with existing dpd columns
psql -d registry < ./dpd_update.sql

# drop old dpd schema
psql -d registry -c "DROP SCHEMA $TEMP_SCHEMA CASCADE"

echo "----------------- DONE DPD UPDTAE-----------------"