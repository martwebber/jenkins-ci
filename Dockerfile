# #FROM ubuntu:20.04
# FROM alpine:latest
# #RUN apk update && apk add --no-cache
# RUN apk add --update --no-cache
# RUN apk add --no-cache python3 py3-pip
# RUN pip install flask
# EXPOSE 5000
# COPY app.py /opt/app.py
# # ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
# CMD [ "python3","/opt/app.py" ]

FROM python:3.8-alpine
# WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python", "app.py"]