FROM trunarrative/alpine:base
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + qa tools"

WORKDIR /root

RUN apk update \
 && apk add --no-cache \
    chromium \
    chromium-chromedriver \
    firefox-esr \
    git \
    maven \
    npm \
    openjdk8 \
 && pip install \
    selenium \
 && npm install -g newman

CMD ["/bin/bash"]
