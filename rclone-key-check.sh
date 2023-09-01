#!/bin/bash

# check if rclone accounts are still valid

RCLONE="rclone --config rclone.conf"

if [ -f errors.log ]; then rm -fv errors.log; fi 

for remote in $(${RCLONE} listremotes); do
  if ${RCLONE} lsd "$remote" >/dev/null 2>>errors.log; then
    echo "OK $remote"
  else 
    echo "FAIL $remote"
  fi 
done
