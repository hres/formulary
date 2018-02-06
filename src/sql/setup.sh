#!/bin/bash -e

if [ "$PGDATABASE" != '' ]; then
    echo 'Must not specify PGDATABASE'
    false
fi

export PGDATABASE=ccdd_$(date +'%Y_%m_%d_%H%M%S')

createdb "$PGDATABASE"

# psql -v ON_ERROR_STOP=1 < dpdloader/dpd_structure.sql # empty schema for testing
# psql -v ON_ERROR_STOP=1 < dpdloader/dpd_constraints.sql # empty schema for testing

# DPD extract load
pgloader dpdloader/dpdload.pgload
pgloader dpdloader/dpdload_ia.pgload
pgloader dpdloader/dpdload_dr.pgload
pgloader dpdloader/dpdload_ap.pgload

# CCDD schema and source data
psql -v ON_ERROR_STOP=1 < ccdd-instance-structure.sql
psql -v ON_ERROR_STOP=1 < test/ccdd-tm-table-2017-12.sql
psql -v ON_ERROR_STOP=1 < test/ccdd-ntp-sequence-2017-12.sql
pgloader ccdd-ingredient-stem-load.pgload
pgloader ccdd-dosage-form-load.pgload
pgloader ccdd-combination-products-load.pgload
pgloader ccdd-unit-of-presentation-load.pgload

# load the data from views into main schema
psql -v ON_ERROR_STOP=1 < ccdd-run-views.sql
