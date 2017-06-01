#!/bin/bash
echo "[INFO] Initial Wait"
sleep 30
echo "[INFO] Waiting for postgres"
until psql -h "postgres" --username="postgres"; do
  >&2 printf "still trying! \n"
  sleep 1
done

echo "[INFO] Postgres ready"
