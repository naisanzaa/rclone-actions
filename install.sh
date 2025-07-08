#!/bin/bash 

# installs rclone

set -xe 

sudo apt update
sudo apt install rclone -y

rclone --version
