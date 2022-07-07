FROM golang:1.18-alpine
RUN apk --no-cache update && \
    apk --no-cache add ca-certificates groff less bash git jq file curl 
RUN apk add --no-cache python3 py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir awscli \
    && rm -rf /var/cache/apk/*
