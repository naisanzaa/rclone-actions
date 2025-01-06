#!/bin/bash

# refresh rclone tokens

cd "$(dirname $0)"; set -xe

RCLONE="$(which rclone) --config rclone.conf"

${RCLONE} config reconnect chaofamily-gdrive:
${RCLONE} config reconnect chaofamily-photos:
${RCLONE} config reconnect naisanza-gdrive:
${RCLONE} config reconnect naisanza-photos:
