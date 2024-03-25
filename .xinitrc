#!/bin/sh
setxkbmap pt &
#xrdb ~/.Xresources &
nitrogen --restore &
dwmblocks &
picom &
exec dwm
