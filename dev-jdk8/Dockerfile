FROM trunarrative/alpine:base
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + openjdk8"

WORKDIR /root

RUN apk update \
 && apk add --no-cache \
    docker \
    maven \
    openjdk8 \
    fontconfig \
    ttf-dejavu

ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH $JAVA_HOME/bin:$PATH

CMD ["/bin/bash"]
