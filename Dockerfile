FROM docker/compose@sha256:4479af5256e02c3e7710051706a7abbcd39b0b31b0e306b2c18a0cbc88aee705
ENV DOCKER_CLI_EXPERIMENTAL enabled

RUN set -e;\
 mkdir -p ~/.docker/cli-plugins;\
 cd ~/.docker/cli-plugins;\
 wget -Odocker-buildx https://github.com/docker/buildx/releases/download/v0.4.2/buildx-v0.4.2.linux-amd64;\
 chmod +x docker-buildx;\
 docker buildx install
