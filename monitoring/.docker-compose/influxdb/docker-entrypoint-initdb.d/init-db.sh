#!/bin/bash
set -e

influx <<-EOSQL
    user create -n ${INFLUXDB_USER} -p ${INFLUXDB_PASSWORD}
    create database ${INFLUXDB_DB}
    GRANT ALL ON ${INFLUXDB_DB} TO ${INFLUXDB_USER}
EOSQL