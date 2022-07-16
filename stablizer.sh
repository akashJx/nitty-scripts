#!/bin/bash

# upgrades dumb netcat reverse shell.
# These commands will not kill shell when pressing ctrl+c
# Reference : https://www.metahackers.pro/upgrade-shell-to-fully-interactive-tty-shell/
# Instructions
# 1. Put this file anywhere in non-root $PATH
# 2. Map this script with some keyboard combination like alt+s to execute this.
# After getting any shell on netcat. just hit alt+s. and shell will be stablized.

sleep 1.5;

# python stablize
xdotool type "python -c 'import pty; pty.spawn(\"/bin/bash\")'"
xdotool key Return;
sleep 1.5;

xdotool type "export TERM=xterm-256color"
xdotool key Return;
sleep 1.5;

xdotool key ctrl+z;
xdotool type "stty raw -echo;fg";
xdotool key Return;
sleep 1.5;

xdotool type "reset";
xdotool key Return;
xdotool key Return;
sleep 2;

xdotool type "stty rows 40 columns 150";
xdotool key Return;
xdotool key Return;

sleep 1.5
notify-send 'TTY shell stablized..';
