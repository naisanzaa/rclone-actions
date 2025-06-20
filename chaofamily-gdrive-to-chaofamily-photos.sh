#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} copy -v chaofamily-gdrive:family       chaofamily-photos:album/family                              2>&1 | grep 'Transferred'
