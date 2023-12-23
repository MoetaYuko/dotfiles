#!/bin/sh

THEME=Materia
ICON_THEME=Papirus
gsettings set org.gnome.desktop.interface gtk-theme $THEME
gsettings set org.gnome.desktop.interface icon-theme $ICON_THEME
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
sed -i "/^Net\/ThemeName /s/ .*$/ \"$THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
sed -i "/^Net\/IconThemeName /s/ .*$/ \"$ICON_THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
killall -HUP xsettingsd
