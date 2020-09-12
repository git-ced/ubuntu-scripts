#!bin/bash

# Adds 1904x1071 @ 60 Hz as a custom resolution
xrandr --newmode "1904x1071_60.00"  169.50  1904 2024 2224 2544  1071 1074 1079 1111 -hsync +vsync
xrandr --addmode HDMI-A-0 "1904x1071_60.00"
