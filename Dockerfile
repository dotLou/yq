FROM alpine:3.9@sha256:b3dbf31b77fd99d9c08f780ce6f5282aba076d70a513a8be859d8d3a4d0c92b8

RUN apk add --no-cache \
    python \
    python-dev \
    py-pip \
    build-base \
    jq \
  && pip install yq

ENTRYPOINT [ "/usr/bin/yq" ]