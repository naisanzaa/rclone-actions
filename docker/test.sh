#!/bin/bash

cd "$(dirname $0)" && set -xe

docker run --rm -it --entrypoint bash rclone "$@"
