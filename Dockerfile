FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python \
    python-dev \
    python-pip \
    gcc \
    g++ \
    make \
    bc \
    git \
    perl \
    libncurses5-dev \
    libssl-dev \
    libxml2-utils \
    flex \
    bison \
    unzip \
    wget \
    xz-utils \
    device-tree-compiler \
    cpio \
    rsync \
    && rm -rf /var/lib/apt/lists/*

# Make python2 default
RUN ln -sf /usr/bin/python2.7 /usr/bin/python

WORKDIR /work
