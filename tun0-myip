#!/bin/bash

# Instructions
# 1. Put this file anywhere in non-root $PATH
# 2. Map this script with some keyboard combination like alt+i to execute this.
# When connected to openvpn; just hit alt+i
# and tun0 IP will be copied into clipboard.

printf "%s" `ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'` | xclip -selection clipboard;
ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}';

notify-send 'tun0  IP  copied..';
