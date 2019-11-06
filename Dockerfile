FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + some useful stuff"

RUN apk add --no-cache \
    bash \
    py3-pip \
    docker \
    docker-compose \
 && pip3 install -U pip \
 && pip3 install awscli

CMD ["/bin/bash"]
