#! /usr/bin/bash

tempfile=$(mktemp 2>/dev/null) || tempfile=/tmp/test$$

dialog --clear --title "Power Options" --menu "" 0 0 0 1 "Logout" 2 "Reboot" 3 "Power off" 2> "$tempfile"

choice=$(<"$tempfile")
rm -f "$tempfile"

echo $choice

case "$choice" in
	1)
		echo "You chose logout"
		;;
	2)
		echo "You chose reboot"
		;;
	3)
		echo "You chose power off"
		;;
	4)
		echo "You chose exit"
		;;
	*)
		echo "Error, exited"
		;;
esac	
