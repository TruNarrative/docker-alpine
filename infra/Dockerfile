FROM trunarrative/alpine:base
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + infra tools"

RUN apk update \
 && apk add --no-cache \
    docker \
    docker-compose \
    git \
    openssh-client \
    openssl \
 && pip install boto \
 && pip install boto3 \
 && pip install ansible \
 && LATEST_VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version') \
 && wget -P /tmp https://releases.hashicorp.com/terraform/${LATEST_VER}/terraform_${LATEST_VER}_linux_amd64.zip \
 && unzip -d /usr/local/bin /tmp/terraform*.zip \
 && rm -f /tmp/terraform*.zip

CMD ["/bin/bash"]
