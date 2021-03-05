FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + base tools"

WORKDIR /root

RUN apk update \
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
 && mkdir -p ~/.config \
 && pip install -U pip setuptools wheel \
 && pip install \
    ppslack \
 && wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub \
 && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk \
 && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-bin-2.33-r0.apk \
 && wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-i18n-2.33-r0.apk \
 && apk add glibc-2.33-r0.apk glibc-bin-2.33-r0.apk glibc-i18n-2.33-r0.apk \
 && /usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8 \
 && rm -rf glibc-*.apk \
 && wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip \
 && unzip awscli-exe-linux-x86_64.zip \
 && aws/install \
 && rm -rf awscli-exe-linux-x86_64.zip aws

CMD ["/bin/bash"]
