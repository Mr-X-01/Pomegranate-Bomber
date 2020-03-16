#!/bin/bash
clear
echo "##################################################"
echo "#------------------------------------------------#"
echo "##--#######--##88888888888888888888##--#######--##"
echo "##---#####---##88   1. Termux    88##---#####---##"
echo "####--###--####88   2. Other     88####--###--####"
echo "#####--#--#####88   3. iSH       88#####--#--#####"
echo "#######-#######88888888888888888888#######-#######"
echo "#####--#-######88888888888888888888#####--#--#####"
echo "####--###--####88 Choose 1/2/3:  88####--###--####"
echo "##---#####---##88888888888888888888##---#####---##"
echo "#------------------------------------------------#"
echo "##################################################"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/Pomegranate-Bomber/spammer.py /data/data/com.termux/files/usr/bin/Pomegranate-Bomber
	dos2unix /data/data/com.termux/files/usr/bin/Pomegranate-Bomber
	chmod 777 /data/data/com.termux/files/usr/bin/Pomegranate-Bomber
	Pomegranate-Bomber
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ];
		then
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
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spymer/spammer.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
			spymer
		else
			echo "Invalid input"
		fi
	fi
fi
