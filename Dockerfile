FROM debian:jessie

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
		ca-certificates \
		curl \
		wget \
    && rm -rf /var/lib/apt/lists/*
