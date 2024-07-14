#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} sync -v --delete-before chaofamily-gdrive:family       wasabi-eu:archive-family                                    2>&1 | grep 'Transferred'
