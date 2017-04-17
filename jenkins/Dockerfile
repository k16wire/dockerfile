FROM jenkins:2.46.1-alpine

ENV COMPOSE_VERSION 1.11.2
ENV DOCKER_VERSION 1.17.04.0-ce

USER root

RUN apk --no-cache add openjdk8 sudo  &&\
    rm -rf /tmp/*
RUN curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}
RUN chmod +x docker-${DOCKER_VERSION} \
      && sudo mv docker-${DOCKER_VERSION} /usr/local/bin/docker
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
     && chmod +x /usr/local/bin/docker-compose