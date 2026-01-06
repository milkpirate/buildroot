FROM ubuntu:24.04 AS builder

RUN mkdir -p /repo

RUN apt-get update \
  && apt-get install --yes \
    bc \
    build-essential \
    bzip2 \
    cpio \
    extlinux \
    file \
    git \
    libelf-dev \
    libncurses5-dev \
    libssl-dev \
    nano \
    rsync \
    unzip \
    wget

WORKDIR /repo
