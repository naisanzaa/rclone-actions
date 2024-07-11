#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} sync -v --delete-before dad-gdrive:    wasabi:archive-dad/gdrive                                                   2>&1
