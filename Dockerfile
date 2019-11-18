FROM python:3-alpine

RUN apk update && apk upgrade \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /usr/src/app

WORKDIR /usr/src/app

VOLUME /usr/src/app