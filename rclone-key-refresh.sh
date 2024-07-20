#!/bin/bash

# refresh rclone tokens

cd "$(dirname $0)"; set -xe

RCLONE="rclone --config rclone.conf"

${RCLONE} config reconnect naisanza-gdrive:
${RCLONE} config reconnect naisanza-photos:
