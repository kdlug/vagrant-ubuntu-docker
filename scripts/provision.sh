#!/bin/bash
DOCKER_COMPOSE_VERSION="1.18.0"

apt-get update -y

apt-get install -y curl git nano vim mc unzip screen tmux

# Install docker engine
curl https://get.docker.com | sh

# Use Docker as non root user
usermod -aG docker vagrant

# Docker compose
curl -L https://github.com/docker/compose/releases/download/{$DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
