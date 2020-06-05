FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + openjdk8"

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
    openjdk8-jre

CMD ["/usr/bin/java"]
