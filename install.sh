#!/bin/bash 

# installs rclone

set -xe 

apt install rclone -y

rclone --version
