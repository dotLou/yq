FROM python:alpine
RUN pip install yq
ENTRYPOINT [ "/usr/bin/yq" ]
