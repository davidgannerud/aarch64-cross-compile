FROM ubuntu:22.04

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
    apt-get -y install --no-install-recommends \
    cmake \
    crossbuild-essential-arm64 \
    make \
    libssl-dev \
    ninja-build 

RUN mkdir workspace
WORKDIR workspace

RUN useradd -ms /bin/bash user
USER user
