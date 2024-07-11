#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} sync -v --delete-before --drive-acknowledge-abuse naisanza-gdrive:home/eric   naisanza-onedrive:home/eric          2>&1
