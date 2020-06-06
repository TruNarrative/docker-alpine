FROM trunarrative/alpine:base
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + openjdk11"

RUN apk update \
 && apk add --no-cache \
    docker \
    maven \
    openjdk11-jre

CMD ["/bin/bash"]
