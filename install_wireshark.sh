#!/bin/bash
# Wireshark Arch Linux by dpnpinto.github.io 
# Install wireshark gui
sudo pacman -S wireshark
# put user in the group of wireshark
sudo groupmod -aG wireshark $USER
