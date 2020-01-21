#!/bin/bash
clear
echo "--------------------"
echo "|    1. Termux     |"
echo "|    2. Other      |"
echo "|                  |"
echo "|      1 or 2:     |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pip3 install requests
	pip3 install colorama
	cp ~/Mrx/spammer.py /data/data/com.termux/files/usr/bin/Mrx
	dos2unix /data/data/com.termux/files/usr/bin/Mrx
	chmod 777 /data/data/com.termux/files/usr/bin/Mrx
	Mrx
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "You have no rights. Run install.sh with root (sudo sh ~/Mrx/install.sh)"
			exit
		else
			apt install python3 python3-pip
			pip3 install requests
			pip3 install colorama
			cp ~/Mrx/spammer.py /usr/bin/Mrx
			dos2unix /usr/bin/Mrx
			chmod 777 /usr/bin/Mrx
			Mrx
		fi
	else
		echo "Invalid input"
	fi
fi

