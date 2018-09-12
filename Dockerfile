FROM alpine:3.7@sha256:88018c22d10c93938e293b5a9991196509d6afb584c64c8b4e15d487dbf36a0e

RUN apk add --no-cache \
    python \
    python-dev \
    py-pip \
    build-base \
    jq \
  && pip install yq

ENTRYPOINT [ "/usr/bin/yq" ]