FROM breauxaj/alpine:latest

RUN apk add python3 \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /usr/src/app

WORKDIR /usr/src/app

VOLUME /usr/src/app

CMD ["sh"]

LABEL org.opencontainers.image.vendor="Breaux Heavy Industries" \
	org.opencontainers.image.url="https://breaux.io" \
	org.opencontainers.image.title="Python" \
	org.opencontainers.image.description="Python 3 basic installation" \
	org.opencontainers.image.version="v0.0.1" \
	org.opencontainers.image.documentation="https://docs.breaux.io"