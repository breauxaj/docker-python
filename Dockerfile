FROM breauxaj/alpine:latest

RUN apk add curl \
  python3 \
  && rm -rf /var/cache/apk/* \
  && mkdir -p /usr/src/app

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
  && python get-pip.py

WORKDIR /usr/src/app

VOLUME /usr/src/app

CMD ["sh"]

LABEL org.opencontainers.image.vendor="Breaux Heavy Industries" \
	org.opencontainers.image.url="https://breaux.io" \
	org.opencontainers.image.title="Python" \
	org.opencontainers.image.description="Python 3 basic installation" \
	org.opencontainers.image.version="v0.0.1" \
	org.opencontainers.image.documentation="https://docs.breaux.io"