#!/bin/bash

text_color="\033[0;1m"
prompt_color="\033[;32m"
info_color="\033[1;34m"

out=$(ip a | grep tun0 | grep inet | awk -F ' ' '{print $2}' | cut -d / -f 1)

if [ ! -z "$out" ]
then
    vpn_ip="["$text_color$out$prompt_color"]-"
    printf $vpn_ip
else
    exit
fi
