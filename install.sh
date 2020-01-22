#!/bin/bash
clear
echo "########################"
echo "########################"
echo "####8888888888888888####"
echo "####88 1. Termux  88####"
echo "####88 2. Other   88####"
echo "####8888888888888888####"
echo "########################"
echo "########################"
echo "1 or 2:"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pip3 install requests
	pip3 install colorama
	cp ~/Pomegranate-Bomber/spammer.py /data/data/com.termux/files/usr/bin/Pomegranate-Bomber
	dos2unix /data/data/com.termux/files/usr/bin/Pomegranate-Bomber
	chmod 777 /data/data/com.termux/files/usr/bin/Pomegranate-Bomber
	Pomegranate-Bomber
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "You have no rights. Run install.sh with root (sudo sh ~/Pomegranate-Bomber/install.sh)"
			exit
		else
			apt install python3 python3-pip
			pip3 install requests
			pip3 install colorama
			cp ~/Pomegranate-Bomber/spammer.py /usr/bin/Pomegranate-Bomber
			dos2unix /usr/bin/Pomegranate-Bomber
			chmod 777 /usr/bin/Pomegranate-Bomber
			Pomegranate-Bomber
		fi
	else
		echo "Invalid input"
	fi
fi

