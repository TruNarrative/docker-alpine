FROM alpine:latest
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + some useful stuff"

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
    bash \
    py3-pip \
    docker \
    docker-compose \
    make \
 && pip3 install -U pip \
 && pip3 install awscli \
 && pip3 install outsystems-pipeline \
 && ln -s /usr/bin/python3 /usr/bin/python \
 && wget -P /tmp https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_linux_amd64.zip \
 && unzip -d /usr/local/bin /tmp/terraform*.zip \
 && rm -f /tmp/terraform*.zip

CMD ["/bin/bash"]
