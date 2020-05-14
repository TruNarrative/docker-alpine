FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + base tools"

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
    bash \
    curl \
    file \
    jq \
    make \
    py3-pip \
    sudo \
    tree \
 && ln -s /usr/bin/python3 /usr/bin/python \
 && ln -s /usr/bin/pip3 /usr/bin/pip \
 && pip install -U pip awscli ppmail \
 && mkdir -p ~/.config

CMD ["/bin/bash"]
