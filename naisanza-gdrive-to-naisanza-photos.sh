#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} sync -v --delete-before naisanza-gdrive:home/eric/pictures/Memories           naisanza-photos:album/Memories       2>&1 | grep '%'
