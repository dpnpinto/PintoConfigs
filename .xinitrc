#!/bin/sh
setxkbmap pt &
# xrdb ~/.Xresources &
picom &
nitrogen --restore &
exec dwm
