#!/bin/bash
clear
echo "--------------------"
echo "|    1. Termux     |"
echo "|    2. Другое     |"
echo "|                  |"
echo "|     1 или 2:     |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pip3 install requests
	pip3 install colorama
	cp ~/alpha/spammer.py /data/data/com.termux/files/usr/bin/alpha
	dos2unix /data/data/com.termux/files/usr/bin/alpha
	chmod 777 /data/data/com.termux/files/usr/bin/alpha
	alpha
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "You have no rights. Run install.sh with root (sudo sh ~/alpha/install.sh)"
			exit
		else
			apt install python3 python3-pip
			pip3 install requests
			pip3 install colorama
			cp ~/alpha/spammer.py /usr/bin/alpha
			dos2unix /usr/bin/alpha
			chmod 777 /usr/bin/alpha
			alpha
		fi
	else
		echo "Invalid input"
	fi
fi

