#!/bin/bash

set -x

_GITHUB_PAT=$_GITHUB_PAT

ACTION_IDS=$(curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $_GITHUB_PAT" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/naisanzaa/rclone-actions/actions/runs | jq '.workflow_runs[].id')

echo $ACTION_IDS | xargs -I RUN_ID -n1 curl -L \
  -X DELETE \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $_GITHUB_PAT" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/naisanzaa/rclone-actions/actions/runs/RUN_ID/logs
