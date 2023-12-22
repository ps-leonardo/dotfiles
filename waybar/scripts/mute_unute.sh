#!/bin/sh

volume=$(pamixer --get-volume-human)
if [ $volume = "muted" ]; then
	pamixer -u
else
	pamixer -m
fi
