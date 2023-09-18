#!/bin/bash 

set -ex

RCLONE="rclone --config rclone.conf"

# add rclone commands here

# eric
${RCLONE} sync -v --delete-before naisanza-gdrive:home/eric/pictures/Memories           naisanza-photos:album/Memories       2>&1 | grep '%' || echo $?
${RCLONE} sync -v --delete-before naisanza-gdrive:home/eric/pictures/Memories/Life      chaofamily-photos:album/Eric/Life    2>&1 | grep '%' || echo $?
${RCLONE} sync -v --delete-before --drive-acknowledge-abuse naisanza-gdrive:home/eric   wasabi:archive-eric                  2>&1 | grep '%' || echo $?
${RCLONE} sync -v --delete-before --drive-acknowledge-abuse naisanza-gdrive:home/eric   naisanza-onedrive:home/eric          2>&1 | grep '%' || echo $?

# dad
${RCLONE} sync -v --delete-before dad-onedrive:  wasabi:archive-dad/onedrive                                                 2>&1 | grep '%' || echo $?
${RCLONE} sync -v --delete-before dad-gdrive:    wasabi:archive-dad/gdrive                                                   2>&1 | grep '%' || echo $?

# chaofamily
${RCLONE} sync -v --delete-before chaofamily-gdrive:family       wasabi-eu:archive-family                                    2>&1 | grep '%' || echo $?
${RCLONE} sync -v --delete-before chaofamily-gdrive:cjguidance   wasabi-eu:archive-cjguidance                                2>&1 | grep '%' || echo $?
${RCLONE} sync -v --delete-before chaofamily-gdrive:family       chaofamily-photos:album/family                              2>&1 | grep '%' || echo $?
