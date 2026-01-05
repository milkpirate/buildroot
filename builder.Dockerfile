FROM ubuntu:24.04 AS builder

RUN mkdir -p /repo

RUN apt-get update \
  && apt-get install --yes \
    build-essential \
    git \
    libncurses5-dev \
    nano

WORKDIR /repo
