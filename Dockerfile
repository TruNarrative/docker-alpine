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
    chromium \
    chromium-chromedriver \
    jq \
    curl \
    maven \
    openjdk8 \
    file \
 && pip3 install -U pip \
 && pip3 install awscli \
 && pip3 install selenium \
 && pip3 install ppmail \
 && ln -s /usr/bin/python3 /usr/bin/python \
 && LATEST_VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version') \
 && wget -P /tmp https://releases.hashicorp.com/terraform/${LATEST_VER}/terraform_${LATEST_VER}_linux_amd64.zip \
 && unzip -d /usr/local/bin /tmp/terraform*.zip \
 && rm -f /tmp/terraform*.zip

CMD ["/bin/bash"]
