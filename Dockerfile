#FROM ubuntu:20.04
FROM alpine:latest
RUN apk update && apk add --no-cache
RUN apk add --no-cache python3 py3-pip
RUN pip install flask
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
