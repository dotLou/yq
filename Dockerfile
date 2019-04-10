FROM alpine:3.9@sha256:4ed6618af6841c844f9eb692e4d00cae9e7a55b66e118fcf212c1796094ba707

RUN apk add --no-cache \
    python \
    python-dev \
    py-pip \
    build-base \
    jq \
  && pip install yq

ENTRYPOINT [ "/usr/bin/yq" ]