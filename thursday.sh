#!/bin/bash

Today=$(date +%u)

Colors=("\e[97m" "\e[31m" "\e[91m" "\e[32m" "\e[92m" "\e[33m" "\e[93m" "\e[34m" "\e[94m" "\e[35m" "\e[95m" "\e[36m" "\e[96m")

function thursday_check(){
	if [ $Today -eq 4 ]; then
		amixer -q set Master unmute
		amixer -q set Master 100%
		echo -e "\n\n\e[1mDo you know what day is today?!\n\n"
		if command -v mpv &> /dev/null; then
			mpv --really-quiet "https://youtu.be/d7xMgJedN2s?si=kRf5GzFAYRA2gEtU" &
			sleep 5
		else
			brave-browser "https://youtu.be/d7xMgJedN2s?si=kRf5GzFAYRA2gEtU"
			#firefox "https://youtu.be/d7xMgJedN2s?si=kRf5GzFAYRA2gEtU"
			#google-chrome "https://youtu.be/d7xMgJedN2s?si=kRf5GzFAYRA2gEtU"
			#opera "https://youtu.be/d7xMgJedN2s?si=kRf5GzFAYRA2gEtU"
			#vivaldi "https://youtu.be/d7xMgJedN2s?si=kRf5GzFAYRA2gEtU"
			sleep 5
		fi

		while true		
		do
			rainbow_thursday
		done
	fi
}

function rainbow_thursday(){
	for i in "${!Colors[@]}"; do
		Color="${Colors[$i]}"
		Thursday="IT'S OUT OF TOUCH THURSDAY\e[0m"
		echo -e $Color$Thursday
		sleep 0.2
	done
}

thursday_check
