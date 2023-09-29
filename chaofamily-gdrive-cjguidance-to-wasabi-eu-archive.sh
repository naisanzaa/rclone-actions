#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} sync -v --delete-before chaofamily-gdrive:cjguidance   wasabi-eu:archive-cjguidance                                2>&1 | grep '%'
