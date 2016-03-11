# From normal golang as we need upx-ucl and git
FROM golang:1.6.0
MAINTAINER Albin Gilles <gilles.albin@gmail.com>
ENV REFRESHED_AT 2016-03-05

# Caddy version
ENV CADDY_VERSION=0.8.2

# Install upx-ucl utilities for compressing caddy binary and git for go get
RUN apt-get update -yqq && \
    buildDeps=' \
    upx-ucl \
    git \
    ca-certificates \
    ' && \
    apt-get install -yqq $buildDeps && \
    wget https://github.com/mholt/caddy/releases/download/v$CADDY_VERSION/caddy_linux_amd64.tar.gz && \
    tar xzf caddy_linux_amd64.tar.gz && \
    rm -rf caddy_linux_amd64.tar.gz && \
    mv caddy /usr/bin/caddy && \
    rm -rf /var/lib/apt/lists/*

# Compress Caddy
RUN go get github.com/pwaller/goupx
RUN goupx /usr/bin/caddy
