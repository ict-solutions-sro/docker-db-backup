#!/bin/sh

# Define command output to send to Healthchecks.io
# See: https://github.com/tiredofit/docker-db-backup#pre-backup
m=$(echo "'${1}' backup started on host '${2}' for db '${3}'. Filename: ${5}")

# Send update to healthchecks.io
# See: https://healthchecks.io/docs/measuring_script_run_time/
curl -fsS -m 30 --retry 5 --data-raw "$m" ${HEALTHCHECK_URL}/start