#!/bin/bash 

# installs rclone

set -xe 

sudo apt install rclone -y

rclone --version
