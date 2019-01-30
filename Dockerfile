FROM alpine:3.8@sha256:dad671370a148e9d9573e3e10a9f8cc26ce937bea78f3da80b570c2442364406

RUN apk add --no-cache \
    python \
    python-dev \
    py-pip \
    build-base \
    jq \
  && pip install yq

ENTRYPOINT [ "/usr/bin/yq" ]