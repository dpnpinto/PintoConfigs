#!/bin/sh
setxkbmap pt &
#xrdb ~/.Xresources &
feh --bg-scale ~/.config/backimg/space_arch.png &
dwmblocks &
picom &
exec dwm
