#!/bin/bash 

set -e

RCLONE="rclone --config rclone.conf"

# add rclone commands here
${RCLONE} listremotes

# eric
#${RCLONE} sync -v --delete-before naisanza-gdrive:home/eric/pictures/Memories           naisanza-photos:album/Memories     >> /dev/null 2>&1
#${RCLONE} sync -v --delete-before naisanza-gdrive:home/eric/pictures/Memories/Life      chaofamily-photos:album/Eric/Life  >> /dev/null 2>&1
#${RCLONE} sync -v --delete-before --drive-acknowledge-abuse naisanza-gdrive:home/eric   wasabi:archive-eric                >> /dev/null 2>&1
#${RCLONE} sync -v --delete-before --drive-acknowledge-abuse naisanza-gdrive:home/eric   naisanza-onedrive:home/eric        >> /dev/null 2>&1

# dad
${RCLONE} sync -v --delete-before dad-onedrive:  wasabi:archive-dad/onedrive         >> /dev/null 2>&1
#${RCLONE} sync -v --delete-before dad-gdrive:    wasabi:archive-dad/gdrive           >> /dev/null 2>&1

# chaofamily
#${RCLONE} sync -v --delete-before chaofamily-gdrive:family       wasabi-eu:archive-family          >> /dev/null 2>&1
#${RCLONE} sync -v --delete-before chaofamily-gdrive:cjguidance   wasabi-eu:archive-cjguidance      >> /dev/null 2>&1
#${RCLONE} sync -v --delete-before chaofamily-gdrive:family       chaofamily-photos:album/family    >> /dev/null 2>&1
