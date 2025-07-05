#!/bin/bash
# Installl Docker in a Arch Linux workstation 
sudo pacman -S docker
# As it is a Workstation just start from socket
sudo systemctl enable docker.socket
sudo systemctl start docker.socket
# just add the user to docker goup
newgrp docker
sudo usermod -aG docker $USER
# then install docker compose
sudo pacman -S docker-compose
