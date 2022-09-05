FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y && \
    apt install -y git build-essential python3-dev python3-pip && \
    pip3 install tox

RUN mkdir -p /opt/openstack-image-manager ; git clone https://github.com/osism/openstack-image-manager.git /opt/openstack-image-manager

COPY etc/ /opt/openstack-image-manager/etc/

WORKDIR /opt/openstack-image-manager
