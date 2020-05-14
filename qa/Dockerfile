FROM trunarrative/alpine:base
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + qa tools"

RUN apk update \
 && apk add --no-cache \
    chromium \
    chromium-chromedriver \
    maven \
    openjdk8 \
    npm \
 && pip install selenium \
 && npm install -g newman

CMD ["/bin/bash"]
