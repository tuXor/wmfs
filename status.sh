# tuxor's desktop
#
# ~/.config/wmfs/status.sh

conkytmp=/tmp/.conk
wrapper=~/.config/wmfs/wrapper.sh

[ -e $conkytmp ] || wmfs -c reload &
if [ $(wc -l $conkytmp | sed 's/\/tmp\/.conk//') -gt 50 ]
	then echo "" > $conkytmp && sleep 1 && wmfs -s "`tail -n 1 $conkytmp |$wrapper`"
	else wmfs -s "`tail -n 1 $conkytmp |$wrapper`"
fi


