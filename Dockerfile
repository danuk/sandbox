FROM ubuntu:18.04
WORKDIR /root

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    wget \
    telnet \
    vim \
    dnsutils \
    net-tools \
    iputils-ping \
    iputils-tracepath \
    && \
    apt-get clean

COPY configs/* /etc/

