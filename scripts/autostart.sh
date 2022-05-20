#! /bin/sh

redshift -P -O 3300 -b 0.9:0.9 &
dbus-launch --sh-syntax --exit-with-session;pulseaudio --kill; pipewire &
~/.dwm/./xrand_display.sh &
~/.dwm/./mouse_sens.sh &
dunst &
dwmblocks &
nitrogen --restore &
~/.dwm/scripts/./thunar_tshoot &
thunar --daemon &
udiskie -2 &
#sudo systemctl disable bluetooth; sudo systemctl enable bluetooth &
picom --experimental-backends --config ~/.config/picom.conf &
xset +fp ~/.local/share/fonts
xset fp rehash
xsettingsd &
xset +fp ~/.fonts/misc/
~/.dwm/./remaps &
~/.dwm/./swap_capslock &
dwm
