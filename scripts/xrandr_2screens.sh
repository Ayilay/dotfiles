#!/bin/bash

# Fancy wizardry to detect extra monitors
xrandr --setprovideroutputsource modesetting NVIDIA-0

SCREEN_LEFT=`xrandr | grep -E 'DP-[0-9].*[^s]connected' | cut -c1-4 `
SCREEN_RIGHT=`xrandr | grep -E 'VGA-[0-9]-[0-9].*[^s]connected' | cut -c1-7`

xrandr --auto
xrandr --output $SCREEN_LEFT --primary --output $SCREEN_RIGHT --right-of $SCREEN_LEFT --output LVDS-1-1 --off
