FROM trunarrative/alpine:base as builder

WORKDIR /root

RUN apk add --no-cache git go
RUN go get -u github.com/awslabs/amazon-ecr-credential-helper/ecr-login/cli/docker-credential-ecr-login
RUN go get -u github.com/rakyll/hey

FROM trunarrative/alpine:base
LABEL maintainer="Peter Pakos <ppakos@trunarrative.com>"
LABEL description="alpine:latest + infra tools"

COPY --from=builder /root/go/bin/hey /usr/bin/
COPY --from=builder /root/go/bin/docker-credential-ecr-login /usr/bin/
RUN mkdir -p /root/.docker \
  && echo -e "{\n  \"credsStore\": \"ecr-login\"\n}" >/root/.docker/config.json

RUN apk update \
 && apk add --no-cache \
    ansible \
    apache2-utils \
    docker \
    docker-compose \
    git \
    openssh-client \
    openssl \
    nodejs-current-npm \
 && pip install \
    boto \
    boto3 \
    PTable \
    pywinrm \
    pytz \
 && LATEST_VER=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r -M '.current_version') \
 && wget -P /tmp https://releases.hashicorp.com/terraform/${LATEST_VER}/terraform_${LATEST_VER}_linux_amd64.zip \
 && unzip -d /usr/local/bin /tmp/terraform*.zip \
 && rm -f /tmp/terraform*.zip \
 && npm install -g --silent serverless

CMD ["/bin/bash"]
