FROM python:3.9.0b5-alpine3.11
RUN pip install yq
ENTRYPOINT [ "/usr/bin/yq" ]
