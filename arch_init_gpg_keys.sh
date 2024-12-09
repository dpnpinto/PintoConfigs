#!/bin/bash
# resintall gpg keys
#remove gnupg dir
sudo rm -rf /etc/pacman.d/gnupg
# init local keys
sudo pacman-key --init
# Populate keys
sudo pacman-key --populate
