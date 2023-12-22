#!/bin/sh

waybar=$(pgrep waybar)

if [[ $waybar != "" ]]; then
	killall waybar
fi

if [[ $USER = "leonardo" ]]; then
	waybar & # -s $HOME/.config/waybar/style.css
else
	echo "DOING NOTHING"
fi
