FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + base tools"

RUN mkdir -p ~/.config \
 && apk update \
 && apk upgrade \
 && apk add --no-cache \
    bash \
    curl \
    file \
    jq \
    make \
    py3-pip \
    py3-yaml \
    sudo \
    tree \
 && ln -s /usr/bin/python3 /usr/bin/python \
 && pip install -U pip setuptools wheel \
 && pip --use-feature=2020-resolver install \
    awscli \
    ppmail

CMD ["/bin/bash"]
