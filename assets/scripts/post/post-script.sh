#!/bin/sh

# Define command output to send to Healthchecks.io
# See: https://github.com/tiredofit/docker-db-backup#post-backup
m=$(echo "'${2}' backup completed on host '${3}' for db '${4}' after ${7} seconds. Filename: ${8} Size: ${9} MD5: ${10}")

# Send update to healthchecks.io
# See: https://healthchecks.io/docs/bash/
curl -fsS -m 30 --retry 5 --data-raw "$m" ${HEALTHCHECK_URL}/${1}