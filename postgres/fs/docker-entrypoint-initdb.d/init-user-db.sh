#!/bin/bash
set -e

echo 'AUTH DATABASE CREATION STARTED';

cat /docker-entrypoint-initdb.d/init_scripts/*.sql \
  | psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER"

echo 'AUTH DATABASE CREATED';
