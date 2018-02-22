FROM ubuntu:latest

RUN mkdir apt-get update && \
    apt-get -y install curl jq python-pip && \
    pip install awscli

