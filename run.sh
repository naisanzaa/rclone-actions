#!/bin/bash 

RCLONE="rclone --config rclone.conf"

# add rclone commands here
eval ${RCLONE} listremotes
