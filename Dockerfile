FROM alpine:3.8@sha256:6e6778d41552b2d73b437e3e07c8e8299bd6903e9560419b1dd19e7a590fd670

RUN apk add --no-cache \
    python \
    python-dev \
    py-pip \
    build-base \
    jq \
  && pip install yq

ENTRYPOINT [ "/usr/bin/yq" ]