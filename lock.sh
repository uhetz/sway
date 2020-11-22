#!/bin/sh
# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock --clock --grace 300 --indicator --screenshots --effect-blur 4x2 --datestr "%a %e.%m.%Y" --timestr "%k:%M"
# Kills last background task so idle timer doesn't keep running
kill %%