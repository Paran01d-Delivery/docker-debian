FROM debian:jessie

LABEL maintainer="24.7@yungasdevops.com"

ENV REFRESHED_AT 2019-07-01

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/debian

ENV HOME /opt/debian

WORKDIR /opt/debian

VOLUME ["/etc", "/var/log", "/home", "/root"]
