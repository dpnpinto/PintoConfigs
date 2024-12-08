#!/bin/bash
# Adk mode by by dpnpinto.github.io 
#install in both gtk and qt
#first install manager
sudo pacman -S lxappearance qt6ct
# insall same template to gtk an qt
sudo pacman  -S breeze breeze-gtk
# config qt variable
echo 'export QT_QPA_PLATFORMTHEME="gt6ct"' >> /etc/environment
