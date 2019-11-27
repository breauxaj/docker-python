FROM breauxaj/alpine:latest

RUN apk install python3 \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /usr/src/app

WORKDIR /usr/src/app

VOLUME /usr/src/app