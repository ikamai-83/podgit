FROM alpine:3.10

RUN apk add --update \
    alpine-sdk

RUN apk add --update \--repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    rocksdb \
    rocksdb-dev \
    snappy \
    zlib \
    bzip2

RUN apk add --update --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
    gflags
    
RUN apk add --update \
    autoconf \
    g++ \
    gcc \
    make \
    pkgconf \
    py-zmq 
RUN apk add --no-cache python3 \
    python3-dev \
    build-base \
    git && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip

RUN pip3 install python-rocksdb sanic

RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    leveldb leveldb-dev
RUN pip3 install plyvel
RUN pip3 install redis
#RUN pip3 install google-cloud-pubsub
RUN pip3 install pika==0.13.0
RUN apk add redis

#RUN apk del python3-dev \
#    build-base \
#    git && \
#    rm -r /root/.cache

WORKDIR /home

# Give back control
USER root
