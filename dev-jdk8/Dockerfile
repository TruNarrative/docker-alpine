FROM trunarrative/alpine:base
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + openjdk8"

RUN apk update \
 && apk add --no-cache \
    docker \
    maven \
    openjdk8-jre

CMD ["/bin/bash"]
