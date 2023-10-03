#!/bin/bash 

set -x

RCLONE="rclone --config rclone.conf"

# add rclone commands here

${RCLONE} sync -v --delete-before dad-onedrive:  wasabi:archive-dad/onedrive                                                 2>&1 | grep 'Transferred'
