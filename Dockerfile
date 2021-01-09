# Container image that runs your code
FROM alpine:3.10

ENV PARSE_TEMPLATE_VERSION="v1.0.0" \
    PARSE_TEMPLATE_HASH="8d1dc39e701b938f4874f3f8130cd3a324e7fa4697af36541918f9398dd61223"

RUN apk add --no-cache curl \
    && curl -L -o /usr/bin/parse-template \
        https://github.com/cocreators-ee/parse-template/releases/download/${PARSE_TEMPLATE_VERSION}/parse-template-linux-amd64 \
    && echo "${PARSE_TEMPLATE_HASH}  /usr/bin/parse-template" | sha256sum -c \
    && chmod +x /usr/bin/parse-template

COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]