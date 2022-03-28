FROM ubuntu:18.04
WORKDIR /root

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    curl \
    wget \
    ca-certificates \
    psmisc \
    telnet \
    vim \
    dnsutils \
    net-tools \
    iproute2 \
    iputils-ping \
    iputils-tracepath \
    traceroute \
    tcpdump \
    && \
    apt-get clean

COPY configs/* /etc/

