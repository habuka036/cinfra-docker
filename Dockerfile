FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y install curl jq python-pip software-properties-common && \
    pip install --upgrade pip && \
    pip install awscli && \
    apt-add-repository ppa:duggan/jo --yes && \
    apt-get update -q && \
    apt-get install jo \
    curl -fsSL https://goss.rocks/install | GOSS_DST=/bin sh

