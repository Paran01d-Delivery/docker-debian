FROM debian:sid

LABEL maintainer="docker@lleox.org"

ENV REFRESHED_AT 2021-07-21

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils ca-certificates curl debconf-utils nano wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/server
ENV HOME /opt/server
WORKDIR /opt/server
VOLUME ["/etc", "/var/log", "/home", "/root"]
