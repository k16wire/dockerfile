FROM jenkins:latest

ENV COMPOSE_VERSION 1.3.1
ENV DOCKER_VERSION 1.6.0

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && apt-get install openjdk-8-jdk \
      && rm -rf /var/lib/apt/lists/*
RUN curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}
RUN chmod +x docker-${DOCKER_VERSION} \
      && sudo mv docker-${DOCKER_VERSION} /usr/local/bin/docker
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
     && chmod +x /usr/local/bin/docker-compose
USER jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
