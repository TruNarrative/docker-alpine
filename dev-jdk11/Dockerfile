FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + openjdk11"

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
    openjdk11-jre

CMD ["/usr/bin/java"]
