FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + python, selenium and chromium"

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
    bash \
    py3-pip \
    chromium \
    chromium-chromedriver \
 && pip3 install -U pip \
 && ln -s /usr/bin/python3 /usr/bin/python \
 && pip3 install selenium \
 && pip3 install ppmail

WORKDIR /shared

CMD ["/bin/bash"]
