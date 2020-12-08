FROM alpine:3.12.1
ENV DOCKER_CLI_EXPERIMENTAL enabled
RUN apk add --no-cache docker-cli=19.03.12-r0

RUN set -e;\
 mkdir -p ~/.docker/cli-plugins;\
 cd ~/.docker/cli-plugins;\
 wget -Odocker-buildx https://github.com/docker/buildx/releases/download/v0.4.2/buildx-v0.4.2.linux-amd64;\
 chmod +x docker-buildx;\
 docker buildx install
