#!/bin/sh

## Wallpaper
nitrogen --restore &

if [ `pidof urxvtd | wc -l` -lt 1 ] ; then
urxvtd -q -f -o && sleep 1 && wmfs -c tag 4 && urxvtc -e weechat-curses && wmfs -c tag 5 && urxvtc -e ncmpcpp && wmfs -c tag 8 && urxvtc && urxvtc && urxvtc -e tty-clock -C 6 -c
fi

if [ `pidof parcellite | wc -l` -lt 1 ] ; then
parcellite &
fi

if [ `pidof mpd | wc -l` -lt 1 ] ; then
mpd &
fi

if [ `pidof conky-cli | wc -l` -lt 1 ] ; then
conky-cli -c ~/.config/wmfs/conkycli.wmfsrc > /tmp/.conk 2> /dev/null &
fi

if [ `pidof rtorrent | wc -l` -lt 1 ] ; then
screen -dmS rtorrent rtorrent &
fi

## touchpad
#~ syndaemon -t -k -i 1 -d &




