#!/usr/bin/env bash

# This script must be run as root

DOCKER_COMPOSE_VERSION="1.19.0"


if ! [ -x "$(command -v curl)" ]; then
	echo -e "Installing Curl...\n\n"
	apt-get install curl
fi

if ! [ -x "$(command -v wget)" ]; then
	echo -e "Installing Wget...\n\n"
	apt-get install wget
fi

# Install docker from the official script
function install_docker() {
	echo -e "Installing Docker...\n\n"
	wget -qO- https://get.docker.com/ | sh
}

# Install docker-compose
function install_docker_compose() {
	echo -e "Installing Docker Compose...\n\n"

	curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose
}

# Install docker-compose bash-completion
# See more at https://docs.docker.com/compose/completion
function install_docker_compose_completion() {
	echo -e "Installing Docker Compose bash-completion...\n\n"
	sh -c "curl -L https://raw.githubusercontent.com/docker/compose/$DOCKER_COMPOSE_VERSION/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
}

# Install docker-cleanup command
function install_docker_cleanup() {
	echo -e "Installing docker-cleanup command...\n\n"

	curl -L https://github.com/codions/docker-setup/raw/master/cleanup.sh -o /usr/local/bin/docker-cleanup
	chmod +x /usr/local/bin/docker-cleanup
}

install_docker
install_docker_compose
install_docker_compose_completion
install_docker_cleanup