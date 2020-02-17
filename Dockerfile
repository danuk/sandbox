FROM ubuntu:18.04
WORKDIR /root

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    vim \
    curl \
    wget \
    telnet \
    dnsutils \
    net-tools \
    && \
    apt-get clean

COPY configs/* /etc/

