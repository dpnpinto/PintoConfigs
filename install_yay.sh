#!/bin/bash
# Yet Another Yogurt by dpnpinto.github.io 
cd ~ && git clone https://aur.archlinux.org/yay-bin.git
cd ~/yay-bin/ && makepkg -rsi --noconfirm
cd ~ && rm -Rf ~/yay-bin/