FROM ubuntu:latest

RUN apt update \
    && apt install rclone -y

RUN rclone --version

VOLUME /root

ENTRYPOINT ["rclone"]
