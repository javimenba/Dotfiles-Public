#!/bin/sh

# systray battery icon
export PATH=$HOME/.local/bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1

nm-applet &
setxkbmap latam &
udiskie -t &
#cbatticon -u 5 &
feh --bg-scale /home/javier/Imágenes/Fondo_De_PantallaKDE/7.jpg &
picom &
#xfce4-power-manager &
dropbox &
#sh /home/javier/.config/alacritty/autostart.sh &
cbatticon -u 5 &
# systray volume
# Java Fonts
xsettingsd &
spotifyd --config-path ~/.config/spotifyd/ &

