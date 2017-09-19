FROM debian:9

MAINTAINER colhom@gmail.com

RUN apt update
RUN apt -y install wget unzip

RUN wget https://downloads.rclone.org/rclone-current-linux-amd64.zip

RUN unzip rclone-current-linux-amd64.zip

RUN cp ./rclone-v*-linux-amd64/rclone /usr/sbin
RUN chown root:root /usr/sbin/rclone && chmod 755 /usr/sbin/rclone

ENTRYPOINT ["rclone"]
