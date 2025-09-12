#!/bin/bash
# Installl Docker in a Rocky Linux Server 
# By https://dpnpinto.github.com based on https://idroot.us/install-docker-rocky-linux-10/
# Add Docker oficial repository
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# List repositories
dnf repolist
# Install Docker
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# docker-ce: The primary Docker Engine package containing the daemon (dockerd) responsible for container management
# docker-ce-cli: Provides the command-line interface for interacting with Docker
# containerd.io: Supplies the container runtime environment for executing containers
# docker-buildx-plugin: Enables advanced image building capabilities with multi-platform support
# docker-compose-plugin: Integrates Docker Compose functionality for multi-container applications
#--
# As it is for a Server just start from docker service
sudo systemctl enable docker
sudo systemctl start docker
# verify if the service is up
sudo systemctl status docker
# just add the user to docker goup
sudo usermod -aG docker $(whoami)
# For completion see this https://docs.docker.com/engine/cli/completion/
