#!/bin/bash

cd "$(dirname $0)" && set -xe

docker volume create rclone || :
docker run --rm -it -v rclone:/root --entrypoint bash rclone "$@"
