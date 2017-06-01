#!/bin/bash
echo "[INFO] Waiting for postgres"
until psql -U postgres -d test -h database -p 5432; do
  >&2 printf "still trying! \n"
  sleep 1
done

echo "[INFO] Postgres ready"
