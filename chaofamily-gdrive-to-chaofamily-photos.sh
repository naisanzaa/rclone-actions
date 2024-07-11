#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} sync -v --delete-before chaofamily-gdrive:family       chaofamily-photos:album/family                              2>&1
