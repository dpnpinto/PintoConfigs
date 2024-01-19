#!/bin/sh
setxkbmap pt &
#xrdb ~/.Xresources &
nitrogen --restore &
#slstatus &
picom &
exec dwm
