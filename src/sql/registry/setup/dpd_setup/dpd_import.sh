#!/bin/bash -e
# Must set environment variables PGHOST, PGUSER and PGPASSWORD. PGDATABASE must be unset

export PGDATABASE="registry"
baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# DPD extract load
pgloader "$baseDir/../../../dpdloader/dpdload.pgload"
pgloader "$baseDir/../../../dpdloader/dpdload_ia.pgload"
pgloader "$baseDir/../../../dpdloader/dpdload_dr.pgload"
pgloader "$baseDir/../../../dpdloader/dpdload_ap.pgload"
