#!/bin/bash
# dark mode in GTK and QT by dpnpinto.github.io 
#install in both gtk and qt
#first install gtk and qt managers
sudo pacman -S lxappearance qt6ct
# install same template to gtk an qt
sudo pacman  -S breeze breeze-gtk
# config qt variable
sudo echo export QT_QPA_PLATFORMTHEME=\"qt6ct\" >> /etc/environment
echo You are ready to use Breeze template in both gtk and qt, have fun ;)
