FROM python:3-alpine

RUN apk update && apk upgrade

WORKDIR /usr/src/app

VOLUME /usr/src/app