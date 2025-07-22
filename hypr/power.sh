#! /usr/bin/bash

tempfile=$(mktemp 2>/dev/null) || tempfile=/tmp/test$$

dialog --clear --title "Power Options" --menu "" 0 0 0 1 "Sleep" 2 "Logout" 3 "Reboot" 4 "Power off" 2> "$tempfile"

choice=$(<"$tempfile")
rm -f "$tempfile"

echo $choice

case "$choice" in
	1)
		systemctl suspend
		;;
	2)
		hyprctl dispatch exit
		;;
	3)
		reboot
		;;
	4)
		poweroff
		;;
	*)
		echo "Error, exited"
		;;
esac	
