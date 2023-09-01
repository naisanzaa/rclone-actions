#!/bin/bash

# check list dirs

RCLONE="rclone --config rclone.conf"

if [ -f logs.log ]; then rm -v logs.log; fi 

for remote in $(${RCLONE} listremotes); do
  if ${RCLONE} lsd "$remote" >/dev/null; then
    echo "OK $remote" | tee -a logs.log
    ${RCLONE} lsd "$remote" >> logs.log
  else 
    echo "FAIL rclone lsd $remote"
  fi 
done
