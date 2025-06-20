#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} copy -v naisanza-gdrive:home/eric/pictures/Memories/Life      chaofamily-photos:album/Eric/Life    2>&1 | grep 'Transferred'
