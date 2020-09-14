#!/bin/bash

##################################################
#version 0604 of Nov 25, 2019
##################################################


####################################################################################################################################
####################################################################################################################################
function Start(){
clear
echo "                                                                               "
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                Welcome                                      +"
echo "+-----------------------------------------------------------------------------+"
echo "+                    Software Packages for Ubuntu OS                          +"
echo "+Designed, Developed and maintained by Kerala State IT Mission Malappuram Team+"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "                                                                               "
}

####################################################################################################################################
function hll2321d(){

		clear
		Start
		echo "printer driver installing"
		echo "Please download the file to Downloads folder, then close firefox"
		echo "Press any key to open firefox"
		read -s -n1
		firefox https://drive.google.com/open?id=1cF8BoGtJGqkWo3Kpzo1QAsvEwTp1GYy2
		cd ~/Downloads/
		echo " "
		echo " "
		echo "if not opened firefox, then do manullay download the file using below link and execute below steps"
		echo " "
		echo " "
		echo " "
		echo " https://drive.google.com/open?id=1cF8BoGtJGqkWo3Kpzo1QAsvEwTp1GYy2 "
		echo " "
		echo " "
		echo " "
PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'YES' 'NO' 'Exit'
do

	if [ "$opt" == 'YES' ]; then
		clear
		Start
		cd ~/Downloads/
		sudo bash linux-brprinter-installer-2.2.1-1 HL-L2321D
		sudo apt-get -f install -y
		sudo apt-get update
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Press any key to continue"
		read -s -n1
		break

	elif [ "$opt" == 'NO' ]; then
		echo "Installation interupted"
		echo 'Press any key to Back'
		read -s -n1
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done
			
}


####################################################################################################################################
function dscsigner(){

		clear
		Start
		echo "dsc signer driver installing"
		echo "Please download the file to Downloads folder, then close firefox"
		echo "Press any key to open firefox"
		read -s -n1
		firefox https://drive.google.com/open?id=1aMpmvyFSRIyJKqyZSsoe-WyZ2WsVOU8Y
		echo " "
		echo " "
		echo "if not opened firefox, then do manullay download the file using below link and execute below steps"
		echo " "
		echo " "
		echo " "
		echo " https://drive.google.com/open?id=1aMpmvyFSRIyJKqyZSsoe-WyZ2WsVOU8Y "
		echo " "
		echo " "
		echo " "
PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'YES' 'NO' 'Exit'
do

	if [ "$opt" == 'YES' ]; then
		clear
		Start
		cd /home/*/Downloads
		sudo dpkg -i nicdsign.deb
		sudo apt-get -f install -y
		sudo apt-get update
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Press any key to continue"
		read -s -n1
		break

	elif [ "$opt" == 'NO' ]; then
		echo "Installation interupted"
		echo 'Press any key to Back'
		read -s -n1
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		break
	fi
done
			
}


####################################################################################################################################
function Ricohsp310(){

		clear
		Start
		echo "RICOH SP 310 Printer and scanner driver installing"
		echo "Please download the file to Downloads folder, then close firefox"
		echo "Press any key to open firefox"
		read -s -n1
		firefox http://download1479.mediafire.com/i235blon2sog/063xak9rdwy4qt1/ricohsp310.zip
		cd ~/Downloads/
		echo " "
		echo " "
		echo "if not opened firefox, then do manullay download the file using below link and execute below steps"
		echo " "
		echo " "
		echo " "
		echo " http://download1479.mediafire.com/i235blon2sog/063xak9rdwy4qt1/ricohsp310.zip "
		echo " "
		echo " "
		echo " "

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'YES' 'NO' 'Exit'
do

	if [ "$opt" == 'YES' ]; then
		clear
		Start
		cd ~/Downloads/
		unzip ricohsp310.zip
		cd ~/Downloads/ricohsp310/ 
		sudo dpkg -i ricoh sp 310 printer.deb
		sudo apt-get -f install -y
		sudo apt-get update
		sudo dpkg -i ricoh sp 310 scanner.deb
		sudo apt-get -f install -y
		sudo apt-get update
		cd ~/Downloads/
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Press any key to continue"
		read -s -n1
		break

	elif [ "$opt" == 'NO' ]; then
		echo "Installation interupted"
		echo 'Press any key to Back'
		read -s -n1
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done
			
}

####################################################################################################################################
function 32panasonic1900(){
		clear
		Start
		echo "Panasonic KX-MB1900 driver installing"
		cd ~/Documents/
		wget -O mccgdi-2.0.10-i686.tar.gz https://www.psn-web.net/cs/support/fax/common/file/Linux_PrnDriver/Driver_Install_files/mccgdi-2.0.10-i686.tar.gz
		sudo tar -xvzf mccgdi-2.0.10-i686.tar.gz -C ~/Documents/
		sudo chmod -R 777 mccgdi-2.0.10-i686
		cd mccgdi-2.0.10-i686/
		sudo ./install-driver
		sudo apt-get -f install -y
		sudo apt-get update
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Add Panasonic Printer from following window"
		echo "Press any key to continue"
		read -s -n1
		system-config-printer
		break
	
}

####################################################################################################################################
function 64panasonic1900(){
		clear
		Start
		echo "Panasonic KX-MB1900 driver installing"
		cd ~/Documents/
		wget -O mccgdi-2.0.10-x86_64.tar.gz https://www.psn-web.net/cs/support/fax/common/file/Linux_PrnDriver/Driver_Install_files/mccgdi-2.0.10-x86_64.tar.gz
		sudo tar -xvzf mccgdi-2.0.10-x86_64.tar.gz -C ~/Documents/
		cd mccgdi-2.0.10-x86_64/
		sudo ./install-driver
		sudo ln -s /usr/lib/x86_64-linux-gnu/libgs.so.9 /usr/lib/libgs.so.9
		sudo apt-get -f install -y
		sudo apt-get update
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Add Panasonic Printer from following window"
		echo "Press any key to continue"
		read -s -n1
		system-config-printer
		break
	
}

####################################################################################################################################
function 64canon6230(){

		clear
		Start
		echo "Canon 6230 Driver installation starting"
		cd /home/
		sudo apt-get install curl -y
		curl -L "https://drive.google.com/u/0/uc?id=1BA5GUw0rghLGwlbw2mz4OfO6hEKeaLTA&export=download" > 			64Canon6230.zip
		sudo unzip 64Canon6230.zip
		cd 64Canon6230
		sudo chmod 777 install.sh
		sudo ./install.sh
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Add Canon 6230 Printer from following window"
		echo "Press any key to continue"
		read -s -n1
		/usr/bin/cnsetuputil
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Press any key to continue"
		read -s -n1
		cd /home/
		sudo rm -r 64Canon6230*
}

####################################################################################################################################
function Canon2900(){

		clear
		Start
		echo "Canon LBP2900 Driver installation starting"
		cd /home/
		sudo apt-get install curl -y
		curl -L "https://drive.google.com/u/0/uc?id=1no3Fg32NW3-M4axb4etcWWmExPkLOxmN&export=download" > 			CanonLBP2900.zip
		sudo unzip CanonLBP2900.zip
		cd CanonLBP2900
		sudo chmod 777 CanonLBP.sh
		sudo ./CanonLBP.sh
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Press any key to continue"
		read -s -n1
		cd /home/
		sudo rm -r CanonLBP2900*
}


####################################################################################################################################
function 32canon6230(){

		clear
		Start
		echo "Canon 6230 Driver installation starting"
		cd /home/
		sudo apt-get install curl -y
		curl -L "https://drive.google.com/u/0/uc?id=1rX-DvyOCxYCuFNEajDyNEK5Bk1dAlGWY&export=download" > 			32Canon6230.zip
		sudo unzip 32Canon6230.zip
		cd 32Canon6230
		sudo chmod 777 install.sh
		sudo ./install.sh
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Add Canon 6230 Printer from following window"
		echo "Press any key to continue"
		read -s -n1
		/usr/bin/cnsetuputil
		echo " "
		echo " "
		echo " "
		echo "installation completed"
		echo "Press any key to continue"
		read -s -n1
		cd /home/
		sudo rm -r 32Canon6230*
}

####################################################################################################################################
function 32Printer() {
while :
do

clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Canon 6230' 'Canon 2900' 'Ricoh sp 310' 'Panasonic KX-MB1900' 'HP Printers' 'Back' 'Exit'
do

	if [ "$opt" == 'Canon 6230' ]; then
		32canon6230
		break

	elif [ "$opt" == 'Canon 2900' ]; then
		Canon2900
		break

	elif [ "$opt" == 'Ricoh sp 310' ]; then
		Ricohsp310
		break

	elif [ "$opt" == 'Panasonic KX-MB1900' ]; then
		32panasonic1900
		break

	elif [ "$opt" == 'HP Printers' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Printers' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break
	
	elif [ "$opt" == 'Back' ]; then
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}
####################################################################################################################################
function 64Printer() {
while :
do

clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Canon 6230' 'Canon 2900' 'Ricoh sp 310' 'Panasonic KX-MB1900' 'BROTHER HL-L2321D' 'Back' 'Exit'
do

	if [ "$opt" == 'Canon 6230' ]; then
		64canon6230
		break

	elif [ "$opt" == 'Canon 2900' ]; then
		Canon2900
		break

	elif [ "$opt" == 'Ricoh sp 310' ]; then
		Ricohsp310
		break

	elif [ "$opt" == 'Panasonic KX-MB1900' ]; then
		64panasonic1900
		break

	elif [ "$opt" == 'BROTHER HL-L2321D' ]; then
		hll2321d
		break

	elif [ "$opt" == 'Printers' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break
	
	elif [ "$opt" == 'Back' ]; then
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}

####################################################################################################################################
function Proxkey(){
		clear
		Start
       	echo "Proxkey installation start"
		sudo apt-get purge wdtokentool-emudra -y
		sudo apt-get purge wdtokentool-trustkey -y
		sudo rm -r /etc/init.d/panasoniclpd-init
		cd /home/
		curl -L "https://drive.google.com/uc?authuser=0&id=1o4ez1XbX-D-TcZlikleSsTc02PWkl9fU&export=download" > proxkey.deb
		sudo dpkg -i proxkey.deb
		sudo apt-get -f install -y
		sudo apt-get update
		echo "Proxkey Installation Completed"
		echo 'Press any key for menu'
		read -s -n1
		sudo rm -r proxkey.deb
		}

####################################################################################################################################
function 32ePass(){
		clear
		Start
        	echo "Epass2003 installation start"
		sudo rm -r /usr/lib/ePass*
		cd ~/Documents/
		sudo apt-get install curl -y
		curl -L " https://drive.google.com/uc?authuser=0&id=1HAbNWShJtNMvjU2IqihJ2n92nbMBbzBR&export=download" > ePass2003-Linux-i386.zip
               	unzip ePass2003-Linux-i386.zip
		cd ~/Documents/ePass2003-Linux-i386/config/
		sudo sh config.sh
		sudo cp -rf ~/Downloads/ePass2003-Linux-i386/ /usr/lib/
		cd ~/Documents/ePass2003-Linux-i386/redist/
		sudo cp -rf libcastle.so.1.0.0 /usr/lib
		sudo ln -sf /usr/lib/ePass2003-Linux-i386/redist/pkimanager_admin /bin/pkimanager_admin
		sudo chmod 777 /usr/lib/ePass2003-Linux-i386/redist/pkimanager_admin
		sudo pkimanager_admin
		echo "ePass Installation Completed"
		echo 'Press any key for menu'
		read -s -n1
		}
####################################################################################################################################
function 64ePass(){
		clear
		Start
        echo "Epass2003 installation start"
		sudo rm -r /usr/lib/ePass*
		cd /home/
		curl -L "https://drive.google.com/uc?authuser=0&id=1g_vEuzJ8VoI2UmgxahlyHfWKA9TbjnDG&export=download" > ePass2003-Linux-x64.zip
		unzip ePass2003-Linux-x64.zip
		cd /home/ePass2003-Linux-x64/config/
		sudo sh config.sh
		sudo cp -rf /home/ePass2003-Linux-x64/ /usr/lib/
		cd /home/ePass2003-Linux-x64/redist/
		sudo cp -rf libcastle.so.1.0.0 /usr/lib
		sudo ln -sf /usr/lib/ePass2003-Linux-x64/redist/pkimanager_admin /bin/pkimanager_admin
		sudo chmod 777 /usr/lib/ePass2003-Linux-x64/redist/pkimanager_admin
		sudo pkimanager_admin
		cd /home/
		sudo rm -r ePass2003-Linux-x64*
		echo "ePass Installation Completed"
		echo 'Press any key for menu'
		read -s -n1

}

####################################################################################################################################
function 32Teamviewer(){
		clear
		Start
		echo "teamviewer installation start"
		cd ~
		cd Documents/
		wget -O teamviewer.deb https://download.teamviewer.com/download/linux/teamviewer_i386.deb
		sudo dpkg -i teamviewer.deb
		sudo apt-get -f install -y
		sudo apt-get update
		teamviewer
}

####################################################################################################################################
function 64Teamviewer(){
		clear
		Start
		echo "teamviewer installation start"
		cd /home/
		curl -L "https://drive.google.com/u/0/uc?id=1_3SrRf_IgkO7uUtQEE8q3gLCAdGjIXJ1&export=download" > teamviewer64.deb
		sudo dpkg -i teamviewer64.deb
		sudo apt-get -f install -y
		sudo apt-get update
		sudo rm -rf ~/.config/teamviewer*
		sudo rm -rf ~/.local/share/teamviewer*
		teamviewer
		cd /home/
		sudo rm -r teamviewer64.deb
}

####################################################################################################################################
function 32Anydesk(){
		clear
		Start
		echo "anydesk installation start"
		cd ~
		cd Documents/
		sudo rm -r anydesk*
		sudo apt-get install curl -y
		curl -L "https://drive.google.com/uc?authuser=0&id=1uUQYSaEP_2W2jhO_BmphUQFi9uoJXVLS&export=download" > anydesk32.deb
		sudo dpkg -i anydesk32.deb
		sudo apt-get -f install -y
		sudo apt-get update
		anydesk
}

####################################################################################################################################
function 64Anydesk(){
		clear
		Start
		echo "anydesk installation start"
		cd /home/
		sudo apt-get install curl -y
		curl -L "https://drive.google.com/uc?authuser=0&id=1hIBAH-ESDqVWRFsbKTj9uq7X72DoIopH&export=download" > anydesk64.deb
		sudo dpkg -i anydesk64.deb
		sudo apt-get -f install -y
		sudo apt-get update
		zenity --info --text "Anydesk installed Sucessfully"
		anydesk
		cd /home/
		sudo rm -r anydesk64.deb
}

####################################################################################################################################
function 64zoom(){
		clear
		Start
		echo "zoom installation start"
		cd /home/
		sudo apt-get install curl -y
		curl -L "https://drive.google.com/u/0/uc?id=1ctO_uXDghCv6-pJWpVV2mTnHKqH1WcuK&export=download" > zoom.deb
		sudo dpkg -i zoom.deb
		sudo apt-get -f install -y
		sudo apt-get update
		cd /home/
		sudo rm -r zoom.deb
}
####################################################################################################################################
function 32mozilla(){
		clear
		Start
		echo "Mozilla firefox installation start"
		sudo apt-get purge firefox*
		sudo apt-get -f install -y
		sudo apt-get update
		cd ~
		cd Documents/
		wget https://liquidtelecom.dl.sourceforge.net/project/ubuntuzilla/mozilla/apt/pool/main/f/firefox-mozilla-build/firefox-mozilla-build_48.0-0ubuntu1_i386.deb
		sudo dpkg -i firefox-mozilla*.deb
		sudo apt-get -f install -y
		sudo apt-get update
}

####################################################################################################################################
function 64Mozilla(){
		clear
		Start
		echo "Mozilla firefox installation start"
		sudo apt-get purge firefox*
		sudo apt-get -f install -y
		sudo apt-get update
		cd /home/
		curl -L "https://drive.google.com/uc?id=1qrv6_0KdQtvDr44gBrwtvuiQF8J7aawq&export=download" > firefox48.deb
		sudo dpkg -i firefox48.deb
		sudo apt-get -f install -y
		sudo apt-get update
		cd /home/
		sudo rm -r firefox48.deb
}

####################################################################################################################################
function Adobe_Reader(){
		clear
		Start
		cd /home/
		echo "Adobe reader installation start"
		curl -L "https://drive.google.com/uc?authuser=0&id=1UfMJIxL0sFNf_K0rTgT1NQVUiGFk6g0u&export=download" > adobereader.deb
		sudo apt-get update
		sudo dpkg -i adobereader.deb
		sudo apt-get update
		sudo apt-get -f install -y
		sudo apt-get install libxml2:i386 libstdc++6:i386 -y
		sudo apt-get -f install -y
		echo 'Press any key for menu'
		read -s -n1
		cd /home/
		sudo rm -r adobereader.deb
			
}

####################################################################################################################################
function 64java(){
		clear
		Start
		echo "Java installing"
		echo "Please close the firefox window"
		echo "Please download the file to Downloads folder, then close firefox"
		echo "Press any key to open firefox"
		read -s -n1
		firefox https://drive.google.com/uc?id=1h1hnYWWQT4BuqhTVwbL0stIxW6ZECgaO&export=download
		echo " "
		echo " "
		echo "if not opened firefox, then do manullay download the file using below link and execute below steps"
		echo " "
		echo " "
		echo " "
		echo " https://drive.google.com/uc?id=1h1hnYWWQT4BuqhTVwbL0stIxW6ZECgaO&export=download "
		echo " "
		echo " "
		echo " "
		
		PS3='If Download file sucessfully: '
select opt in 'YES' 'NO' 'Exit'
do

		if [ "$opt" == 'YES' ]; then
		clear
		Start
		sudo mkdir /usr/lib/jvm/
		sudo mkdir /usr/lib/mozilla
		sudo mkdir /usr/lib/mozilla/plugins
		cd /home/*/Downloads
		sudo cp jre64.zip /usr/lib/jvm/jre64.zip
		cd /usr/lib/jvm/
		unzip jre64.zip
		sudo rm -r jre64.zip
		sudo ln -sf /usr/lib/jvm/jre64/bin/ControlPanel /usr/bin/ControlPanel
		sudo ln -sf /usr/lib/jvm/jre64/bin/java  /usr/bin/java
		sudo ln -sf /usr/lib/jvm/jre64/bin/javaws  /usr/bin/javaws
		sudo ln -sf /usr/lib/jvm/jre64/bin/jcontrol  /usr/bin/jcontrol
		sudo ln -sf /usr/lib/jvm/jre64/bin/jjs  /usr/bin/jjs
		sudo ln -sf /usr/lib/jvm/jre64/bin/keytool  /usr/bin/keytool
		sudo ln -sf /usr/lib/jvm/jre64/bin/orbd  /usr/bin/orbd
		sudo ln -sf /usr/lib/jvm/jre64/bin/pack200  /usr/bin/pack200
		sudo ln -sf /usr/lib/jvm/jre64/bin/policytool  /usr/bin/policytool
		sudo ln -sf /usr/lib/jvm/jre64/bin/rmid  /usr/bin/rmid
		sudo ln -sf /usr/lib/jvm/jre64/bin/rmiregistry  /usr/bin/rmiregistry
		sudo ln -sf /usr/lib/jvm/jre64/bin/servertool  /usr/bin/servertool
		sudo ln -sf /usr/lib/jvm/jre64/bin/tnameserv  /usr/bin/tnameserv
		sudo ln -sf /usr/lib/jvm/jre64/bin/unpack200  /usr/bin/unpack200
		sudo ln -sf /usr/lib/jvm/jre64/lib/jexec  /usr/bin/jexec
		sudo ln -sf /usr/lib/jvm/jre64/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins/libjavaplugin.so
		sudo ln -sf /usr/lib/jvm/jre64/lib/amd64/libnpjp2.so /usr/lib/firefox/plugins/libjavaplugin.so
		echo "Java Installation Completed"
		echo 'Press any key for menu'
		read -s -n1
		break
		elif [ "$opt" == 'NO' ]; then
		echo "Installation interupted"
		echo 'Press any key to Back'
		read -s -n1
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		echo 'Press any key to exit'
		read -s -n1
		exit 1
		break

		fi
done

}
####################################################################################################################################
function 32palemoon(){
		clear
		Start
		echo "palemoon installation start"
		sudo add-apt-repository ppa:marian.kadanka/palemoon 
		sudo apt-get update
		sudo apt-get install palemoon
}

####################################################################################################################################
function 64palemoon1804(){
		clear
		Start
		echo "palemoon installation start"
		cd /home/
		curl -L "https://drive.google.com/uc?id=1WrFJxfVu8jgs24v2LDQvD0ZbG9NeU52e&export=download" > palemoon1804.deb
		sudo dpkg -i palemoon1804.deb
		sudo apt-get update
		sudo apt-get -f install -y
		cd /home/
		sudo rm -r palemoon1804.deb
}



####################################################################################################################################
function 64palemoon2004(){
		clear
		Start
		echo "palemoon installation start"
		cd /home/
		curl -L "https://drive.google.com/uc?id=1Tcx1qo0qeZuiD9yQlJOJi8iH3nIv807Y&export=download" > palemoon2004.deb
		sudo dpkg -i palemoon2004.deb
		sudo apt-get update
		sudo apt-get -f install -y
		cd /home/
		sudo rm -r palemoon2004.deb
}


####################################################################################################################################
function 32Java(){
		clear
		Start
		echo "Java installing"
		firefox http://www.mediafire.com/file/43ur06o61bm193b/jdk-8u181-linux-i586.tar.gz/file
		
		PS3='Download file sucessfully: '
		select opt in 'if Yes press 1' 'if No press 2'
		do

		if [ "$opt" == 'if Yes press 1' ]; then
		cd ~/Downloads/
		sudo mkdir /usr/lib/jvm/
		sudo mkdir /usr/lib/mozilla
		sudo mkdir /usr/lib/mozilla/plugins
		sudo tar -xvzf jdk-8u181-linux-i586.tar.gz -C /usr/lib/jvm
		sudo mv /usr/lib/jvm/jdk1.8.0_181/ /usr/lib/jvm/java-8-oracle
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/ControlPanel /usr/bin/ControlPanel
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/java  /usr/bin/java
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/javaws  /usr/bin/javaws
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/jcontrol  /usr/bin/jcontrol
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/jjs  /usr/bin/jjs
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/keytool  /usr/bin/keytool
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/orbd  /usr/bin/orbd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/pack200  /usr/bin/pack200
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/policytool  /usr/bin/policytool
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/rmid  /usr/bin/rmid
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/rmiregistry  /usr/bin/rmiregistry
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/servertool  /usr/bin/servertool
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/tnameserv  /usr/bin/tnameserv
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/unpack200  /usr/bin/unpack200
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/lib/jexec  /usr/bin/jexec
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/appletviewer  /usr/bin/appletviewer
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/extcheck  /usr/bin/extcheck
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/idlj  /usr/bin/idlj
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jar  /usr/bin/jar
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jarsigner  /usr/bin/jarsigner
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javac  /usr/bin/javac
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javadoc  /usr/bin/javadoc
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javafxpackager  /usr/bin/javafxpackager
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javah  /usr/bin/javah
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javap  /usr/bin/javap
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javapackager  /usr/bin/javapackager
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jcmd  /usr/bin/jcmd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jconsole  /usr/bin/jconsole
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jdb  /usr/bin/jdb
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jdeps  /usr/bin/jdeps
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jhat  /usr/bin/jhat
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jinfo  /usr/bin/jinfo
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jmap  /usr/bin/jmap
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jmc  /usr/bin/jmc
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jps  /usr/bin/jps
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jrunscript  /usr/bin/jrunscript
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jsadebugd  /usr/bin/jsadebugd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jstack  /usr/bin/jstack
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jstat  /usr/bin/jstat
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jstatd  /usr/bin/jstatd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jvisualvm  /usr/bin/jvisualvm
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/native2ascii  /usr/bin/native2ascii
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/rmic  /usr/bin/rmic
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/schemagen  /usr/bin/schemagen
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/serialver  /usr/bin/serialver
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/wsgen  /usr/bin/wsgen
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/wsimport  /usr/bin/wsimport
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/xjc  /usr/bin/xjc
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/lib/i386/libnpjp2.so /usr/lib/mozilla/plugins/libjavaplugin.so
		echo "Java Installation Completed"
		echo 'Press any key for menu'
		read -s -n1
		break
		elif [ "$opt" == 'if No press 2' ]; then
		echo 'Press any key to Back'
		read -s -n1
		return
		break

		fi
done

}
####################################################################################################################################
function 64java14(){
		clear
		Start
		echo "Java installing"
		echo "Please close the firefox window"
		echo "Please download the file to Downloads folder, then close firefox"
		echo "Press any key to open firefox"
		read -s -n1
		firefox http://download940.mediafire.com/745ow0ynru2g/ajcqppcw34qr4pq/jdk-8u181-linux-x64.tar.gz
		
		PS3='Download file sucessfully: '
		select opt in 'if Yes press 1' 'if No press 2'
		do

		if [ "$opt" == 'if Yes press 1' ]; then
		cd ~/Downloads/
		sudo mkdir /usr/lib/jvm/
		sudo mkdir /usr/lib/mozilla
		sudo mkdir /usr/lib/mozilla/plugins
		sudo tar -xvzf jdk-8u181-linux-x64.tar.gz -C /usr/lib/jvm
		sudo mv /usr/lib/jvm/jdk1.8.0_181/ /usr/lib/jvm/java-8-oracle
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/ControlPanel /usr/bin/ControlPanel
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/java  /usr/bin/java
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/javaws  /usr/bin/javaws
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/jcontrol  /usr/bin/jcontrol
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/jjs  /usr/bin/jjs
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/keytool  /usr/bin/keytool
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/orbd  /usr/bin/orbd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/pack200  /usr/bin/pack200
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/policytool  /usr/bin/policytool
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/rmid  /usr/bin/rmid
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/rmiregistry  /usr/bin/rmiregistry
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/servertool  /usr/bin/servertool
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/tnameserv  /usr/bin/tnameserv
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/bin/unpack200  /usr/bin/unpack200
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/lib/jexec  /usr/bin/jexec
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/appletviewer  /usr/bin/appletviewer
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/extcheck  /usr/bin/extcheck
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/idlj  /usr/bin/idlj
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jar  /usr/bin/jar
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jarsigner  /usr/bin/jarsigner
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javac  /usr/bin/javac
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javadoc  /usr/bin/javadoc
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javafxpackager  /usr/bin/javafxpackager
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javah  /usr/bin/javah
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javap  /usr/bin/javap
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/javapackager  /usr/bin/javapackager
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jcmd  /usr/bin/jcmd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jconsole  /usr/bin/jconsole
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jdb  /usr/bin/jdb
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jdeps  /usr/bin/jdeps
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jhat  /usr/bin/jhat
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jinfo  /usr/bin/jinfo
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jmap  /usr/bin/jmap
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jmc  /usr/bin/jmc
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jps  /usr/bin/jps
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jrunscript  /usr/bin/jrunscript
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jsadebugd  /usr/bin/jsadebugd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jstack  /usr/bin/jstack
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jstat  /usr/bin/jstat
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jstatd  /usr/bin/jstatd
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/jvisualvm  /usr/bin/jvisualvm
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/native2ascii  /usr/bin/native2ascii
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/rmic  /usr/bin/rmic
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/schemagen  /usr/bin/schemagen
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/serialver  /usr/bin/serialver
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/wsgen  /usr/bin/wsgen
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/wsimport  /usr/bin/wsimport
		sudo ln -sf /usr/lib/jvm/java-8-oracle/bin/xjc  /usr/bin/xjc
		sudo ln -sf /usr/lib/jvm/java-8-oracle/jre/lib/amd64/libnpjp2.so /usr/lib/mozilla/plugins/libjavaplugin.so
		echo "Java Installation Completed"
		echo 'Press any key for menu'
		read -s -n1
		break
		elif [ "$opt" == 'if No press 2' ]; then
		echo 'Press any key to Back'
		read -s -n1
		return
		break

		fi
done

}
####################################################################################################################################
function old32Java(){
		clear
		Start
		echo "Java installing"
		sudo mkdir /usr/lib/java/
		cd ~/Downloads/
		firefox http://download2263.mediafire.com/rqncw5yi6jsg/71gi75djqc1s7ba/jre-8u181-linux-i586.tar.gz
		sudo tar -xvzf jre-8u181-linux-i586.tar.gz -C /usr/lib/java
		echo " copy follwing command and best after end of the file
		JAVA_HOME=/usr/lib/java/jre1.8.0_181
		PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
		export JAVA_HOME
		export JRE_HOME
		export PATH"
		echo 'Press any key to continue'
		read -s -n1
		sudo gedit /etc/profile
		echo 'restart the computer'
		sudo ln -s /usr/lib/java/jre1.8.0_181/lib/i386/libnpjp2.so /usr/lib/mozilla/plugins/libnpjp2.so

}
####################################################################################################################################
function 64palemoon1604(){
		clear
		Start
		echo "palemoon installation start"
		cd ~
		cd Documents/
		sudo rm -r palemoon*		
		curl -L "https://drive.google.com/uc?authuser=0&id=1ITWHScXmISjTeht_9roV3hp4TH-ezzK3&export=download" > palemoon1604.deb
		sudo dpkg -i palemoon1604.deb
		sudo apt-get update
		sudo apt-get -f install -y
}

####################################################################################################################################
function 64Palemoon14(){
		clear
		Start
		echo "palemoon installation start"
		sudo apt-get purge palemoon*
		cd ~
		cd Documents/
		sudo add-apt-repository ppa:marian.kadanka/palemoon
		sudo apt-get update
		sudo apt-get install palemoon
}

####################################################################################################################################
function 32chrome(){
		clear
		Start
		echo "Google Chrome installation start"
		sudo apt-get purge google-chrome*
		sudo apt-get -f install -y
		sudo apt-get update
		cd ~
		cd Documents/
		sudo rm -r google-chrome*
		wget -O google-chrome.deb https://dw.uptodown.com/dwn/w76tVn7onjw1uZFTLSx7oKxzmJiJToEfZrKDL-kePgdFeBezjr9PF_gT69dOX-sds4Y0kXG0yS6_IKOp7VKji4DFYhY2gO7Qr0BZ72_a6MTVQ_LvCgbMsTJvYSyqVLDm/3EKwizwtU5jrI6LrMmLHryt4814ym5nCgtfA1XcfbdbqAKB0o8hRYH_bTN4MYFEeiNb6S10Q9rmSQ-XOhgp1DLoX2dJYvYACbAinDEYOVPJ3Jz9oiupKiF4zYMBRnBTf/tiE-UKKe6KBzDTCbugP3SwprUUc4mJrfYvx5dHao0ExeuUL6K6ZCnAYNludjdrilLtDdoa-hlNrVjzHhg_SCCHyGadC2fxlpSbdgoh3dupxaWlA_BPDyKYZsu14VBAv_/q579W0TXFuh1QUeuintuzyLQBw9yw_lRlmFvPZB2p0A8PT9doY3lb_5Jj-UiOvmYZgk2jK7YhRKZ7bThGOIvlg==/
		sudo dpkg -i google-chrome*.deb
		sudo apt-get -f install -y
		sudo apt-get update
		echo "press any key to continue"
		read -s -n1
}
####################################################################################################################################
function 64chrome(){
		clear
		Start
		echo "Google Chrome installation start"
		sudo apt-get -f install -y
		sudo apt-get update
		cd /home/
		wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		sudo dpkg -i google-chrome-stable_current_amd64.deb
		sudo apt-get -f install -y
		sudo apt-get update
		cd /home/
		sudo rm -r google-chrome-stable_current_amd64.deb
}

####################################################################################################################################
function 32DSC() {
while :
do

clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'ePass_Installation' 'eMudra_Installation' 'Moserbaer_Tokenadmin_Installation' 'Trustkey_Installation' 'Proxkey_Installation' 'DSC_All_Installation' 'Back' 'Exit'
do

	if [ "$opt" == 'ePass_Installation' ]; then
		32ePass
		break

	elif [ "$opt" == 'eMudra_Installation' ]; then
		eMudra
		break

	elif [ "$opt" == 'Moserbaer_Tokenadmin_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Trustkey_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'DSC_All_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Proxkey_Installation' ]; then
		Proxkey
		break
	
	elif [ "$opt" == 'Back' ]; then
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}
####################################################################################################################################
function 64DSC() {
while :
do

clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'ePass_Installation' 'Proxkey_Installation' 'DSC_All_Installation' 'Back' 'Exit'
do

	if [ "$opt" == 'ePass_Installation' ]; then
		64ePass
		break

		
	elif [ "$opt" == 'Proxkey_Installation' ]; then
		Proxkey
		break


	elif [ "$opt" == 'DSC_All_Installation' ]; then
		64ePass
		Proxkey
		echo "All DSC_Installation completed"
		break

	
	elif [ "$opt" == 'Back' ]; then
		return
		break
	
	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}
####################################################################################################################################
function utility20(){
while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'meera font installation' 'Java_Security_Exception_Add' 'mozila profile delete' 'firefox default settings' 'ubuntu default settings' 'set system time offline' 'Back' 'Exit'
do

	
	if [ "$opt" == 'meera font installation' ]; then
		## Meera font install		
		cd ~
		cd Documents/
		wget https://edistrict.kerala.gov.in/Font/Meera.zip
		unzip Meera.zip
		sudo mv Meera.ttf /usr/share/fonts/
		break
		
		elif [ "$opt" == 'Java_Security_Exception_Add' ]; then
		cd /home/
		curl -L "https://drive.google.com/u/0/uc?id=1Gg0WtEAENyyyYzmSuP6PzjATqYZKJg19&export=download" > exception.sites
		sudo mv /home/exception.sites /home/*/.java/deployment/security/
		cd /home/*/.java/deployment/security/
		sudo chmod 777 exception.sites		
		echo 'Press any key to Back'
		read -s -n1
		break
		
	elif [ "$opt" == 'mozila profile delete' ]; then
		sudo rm -r  ~/.mozilla
		break
	
	elif [ "$opt" == 'firefox default settings' ]; then
		## firefox settings
		echo 'copy below command and save'
		echo 'user_pref("browser.startup.homepage", "https://edistrict.kerala.gov.in/|http://revenue.kerala.gov.in/|http://rr.kerala.gov.in/|https://mail.gov.in/iwc_static/c11n/allDomain/layout/login_gov2.jsp?lang=en-US&3.0.1.2.0_15121607&svcs=abs,mail,smime,calendar,c11n|http://cmo.kerala.gov.in/");'
		echo 'user_pref("app.update.enabled", false);'
		echo 'user_pref("dom.disable_open_during_load", false);'
		echo 'user_pref("plugin.state.java", 2);'
		echo 'Press any key to continue'
		read -s -n1
		sudo nano browser.startup.homepage ~/.mozilla/firefox/*.default/prefs.js 
		break


	elif [ "$opt" == 'ubuntu default settings' ]; then
		
		## display off time		
		gsettings set org.gnome.desktop.session idle-delay 900
		## add language malayalam and english
		gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'in+mal_enhanced')]"
		## ubuntu auto updation off
		sudo sed -i 's/APT::Periodic::Update-Package-Lists "1"/APT::Periodic::Update-Package-Lists "0"/' /etc/apt/apt.conf.d/20auto-upgrades
		## set system time using online server
		sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
		## lock to launcher
		gsettings set com.canonical.Unity.Launcher favorites "['application://firefox-mozilla-build.desktop', 'application://org.gnome.Nautilus.desktop', 'application://libreoffice-writer.desktop', 'application://libreoffice-calc.desktop', 'application://com.teamviewer.TeamViewer.desktop', 'application://anydesk.desktop', 'application://unity-control-center.desktop', 'application://simple-scan.desktop', 'application://gnome-calculator.desktop', 'unity://running-apps', 'unity://devices']" 
		break

	elif [ "$opt" == 'set system time offline' ]; then
		echo "copy below command and past in terminal"
		echo "put double inverted comma after equal symbol and end of time "
		echo "sudo date --set=2 OCT 2016 17:06:40"
		echo 'Press any key to Back'
		read -s -n1
		break


	elif [ "$opt" == 'Back' ]; then
		return
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done

}

####################################################################################################################################
function utility18(){
while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'meera font installation' 'mozila profile delete' 'firefox default settings' 'ubuntu default settings' 'set system time offline' 'Back' 'Exit'
do

	
	if [ "$opt" == 'meera font installation' ]; then
		## Meera font install		
		cd ~
		cd Documents/
		wget https://edistrict.kerala.gov.in/Font/Meera.zip
		unzip Meera.zip
		sudo mv Meera.ttf /usr/share/fonts/
		break

	elif [ "$opt" == 'mozila profile delete' ]; then
		sudo rm -r  ~/.mozilla
		break
	
	elif [ "$opt" == 'firefox default settings' ]; then
		## firefox settings
		echo 'copy below command and save'
		echo 'user_pref("browser.startup.homepage", "https://edistrict.kerala.gov.in/|http://revenue.kerala.gov.in/|http://rr.kerala.gov.in/|https://mail.gov.in/iwc_static/c11n/allDomain/layout/login_gov2.jsp?lang=en-US&3.0.1.2.0_15121607&svcs=abs,mail,smime,calendar,c11n|http://cmo.kerala.gov.in/");'
		echo 'user_pref("app.update.enabled", false);'
		echo 'user_pref("dom.disable_open_during_load", false);'
		echo 'user_pref("plugin.state.java", 2);'
		echo 'Press any key to continue'
		read -s -n1
		sudo nano browser.startup.homepage ~/.mozilla/firefox/*.default/prefs.js 
		break


	elif [ "$opt" == 'ubuntu default settings' ]; then
		
		## display off time		
		gsettings set org.gnome.desktop.session idle-delay 900
		## add language malayalam and english
		gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'in+mal_enhanced')]"
		## ubuntu auto updation off
		sudo sed -i 's/APT::Periodic::Update-Package-Lists "1"/APT::Periodic::Update-Package-Lists "0"/' /etc/apt/apt.conf.d/20auto-upgrades
		## set system time using online server
		sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
		## lock to launcher
		gsettings set com.canonical.Unity.Launcher favorites "['application://firefox-mozilla-build.desktop', 'application://org.gnome.Nautilus.desktop', 'application://libreoffice-writer.desktop', 'application://libreoffice-calc.desktop', 'application://com.teamviewer.TeamViewer.desktop', 'application://anydesk.desktop', 'application://unity-control-center.desktop', 'application://simple-scan.desktop', 'application://gnome-calculator.desktop', 'unity://running-apps', 'unity://devices']" 
		break

	elif [ "$opt" == 'set system time offline' ]; then
		echo "copy below command and past in terminal"
		echo "put double inverted comma after equal symbol and end of time "
		echo "sudo date --set=2 OCT 2016 17:06:40"
		echo 'Press any key to Back'
		read -s -n1
		break


	elif [ "$opt" == 'Back' ]; then
		return
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done

}

####################################################################################################################################
function Other(){
while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'ubuntu guest account disable' 'meera font installation' 'mozila profile delete' 'firefox default settings' 'ubuntu default settings' 'Back' 'Exit'
do

	if [ "$opt" == 'ubuntu guest account disable' ]; then
		clear
		Start
		echo "copy below command and past in newly opened window and save it"
		echo "allow-guest=false "
		echo 'Press any key to continue'
		read -s -n1
		sudo gedit /etc/lightdm/lightdm.conf
		sudo restart lightdm
		echo "ubuntu guest account disabled"
		break

	elif [ "$opt" == 'meera font installation' ]; then
		## Meera font install		
		cd ~
		cd Documents/
		wget https://edistrict.kerala.gov.in/Font/Meera.zip
		unzip Meera.zip
		sudo mv Meera.ttf /usr/share/fonts/
		sudo rm -r Meera*
		break

	elif [ "$opt" == 'mozila profile delete' ]; then
		sudo rm -r  ~/.mozilla
		break
	
	elif [ "$opt" == 'firefox default settings' ]; then
		## firefox settings
		echo 'copy below command and save'
		echo 'user_pref("browser.startup.homepage", "https://edistrict.kerala.gov.in/|http://revenue.kerala.gov.in/|http://rr.kerala.gov.in/|https://mail.gov.in/iwc_static/c11n/allDomain/layout/login_gov2.jsp?lang=en-US&3.0.1.2.0_15121607&svcs=abs,mail,smime,calendar,c11n|http://cmo.kerala.gov.in/");'
		echo 'user_pref("app.update.enabled", false);'
		echo 'user_pref("dom.disable_open_during_load", false);'
		echo 'user_pref("plugin.state.java", 2);'
		echo 'Press any key to continue'
		read -s -n1
		sudo nano browser.startup.homepage ~/.mozilla/firefox/*.default/prefs.js 
		break


	elif [ "$opt" == 'ubuntu default settings' ]; then
		## always show menubar
		gsettings set com.canonical.Unity always-show-menus true
		## display off time		
		gsettings set org.gnome.desktop.session idle-delay 600
		## add language malayalam and english
		gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'in+mal_enhanced')]"
		## disable screen lock
		gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'
		## ubuntu auto updation off
		sudo sed -i 's/APT::Periodic::Update-Package-Lists "1"/APT::Periodic::Update-Package-Lists "0"/' /etc/apt/apt.conf.d/20auto-upgrades
		## set system time using online server
		sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
		break
	
	elif [ "$opt" == 'Back' ]; then
		return
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done

}



####################################################################################################################################
function 32Ubuntu12(){

while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Mozilla_Installation' 'DSC_Installation' 'Adobe_Reader_Installation' 'Teamviewer_Installation' 'Anydesk_Installation' 'Java_Installation' 'Palemoon_Installation' 'Google_Chrome_Installation' 'Basic software' 'Printer' 'Exit'
do

	if [ "$opt" == 'Mozilla_Installation' ]; then
		32mozilla
		break

	elif [ "$opt" == 'DSC_Installation' ]; then
		32DSC
		break
	
	elif [ "$opt" == 'Adobe_Reader_Installation' ]; then
		Adobe_Reader
		break

	elif [ "$opt" == 'Teamviewer_Installation' ]; then
		32Teamviewer
		break

	elif [ "$opt" == 'Anydesk_Installation' ]; then
		32Anydesk
		break

	elif [ "$opt" == 'Java_Installation' ]; then
		32Java
		break

	elif [ "$opt" == 'Palemoon_Installation' ]; then
		32palemoon
		break

	elif [ "$opt" == 'Google_Chrome_Installation' ]; then
		32chrome
		break

	elif [ "$opt" == 'Basic software' ]; then
		Other
		break

	elif [ "$opt" == 'Printer' ]; then
		32Printer
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}

####################################################################################################################################
function 32Ubuntu14(){

while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Mozilla_Installation' 'DSC_Installation' 'Adobe_Reader_Installation' 'Teamviewer_Installation' 'Anydesk_Installation' 'Java_Installation' 'Palemoon_Installation' 'Google_Chrome_Installation' 'Basic software' 'Printer' 'Exit'
do

	if [ "$opt" == 'Mozilla_Installation' ]; then
		32mozilla
		break

	elif [ "$opt" == 'DSC_Installation' ]; then
		32DSC
		break
	
	elif [ "$opt" == 'Adobe_Reader_Installation' ]; then
		Adobe_Reader
		break

	elif [ "$opt" == 'Teamviewer_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Anydesk_Installation' ]; then
		32Anydesk
		break

	elif [ "$opt" == 'Java_Installation' ]; then
		32Java
		break

	elif [ "$opt" == 'Palemoon_Installation' ]; then
		32palemoon
		break

	elif [ "$opt" == 'Google_Chrome_Installation' ]; then
		32chrome
		break

	elif [ "$opt" == 'Basic software' ]; then
		Other
		break

	elif [ "$opt" == 'Printer' ]; then
		32Printer
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}

####################################################################################################################################
function 32Ubuntu16(){

while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Mozilla_Installation' 'DSC_Installation' 'Adobe_Reader_Installation' 'Teamviewer_Installation' 'Anydesk_Installation' 'Java_Installation' 'Palemoon_Installation' 'Google_Chrome_Installation' 'Basic software' 'Printer' 'Exit'
do

	if [ "$opt" == 'Mozilla_Installation' ]; then
		32mozilla
		break

	elif [ "$opt" == 'DSC_Installation' ]; then
		32DSC
		break
	
	elif [ "$opt" == 'Adobe_Reader_Installation' ]; then
		Adobe_Reader
		break

	elif [ "$opt" == 'Teamviewer_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Anydesk_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Java_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Palemoon_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break

	elif [ "$opt" == 'Google_Chrome_Installation' ]; then
		32chrome
		break

	elif [ "$opt" == 'Basic software' ]; then
		Other
		break

	elif [ "$opt" == 'Printer' ]; then
		32Printer
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}


####################################################################################################################################
function 64Ubuntu14(){

while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Mozilla_Installation' 'DSC_Installation' 'Adobe_Reader_Installation' 'Teamviewer_Installation' 'Anydesk_Installation' 'Java_Installation' 'Palemoon_Installation' 'Google_Chrome_Installation' 'Zoom_VC_Installation' 'Basic software' 'Printer' 'Exit'
do

	if [ "$opt" == 'Mozilla_Installation' ]; then
		64Mozilla
		break

	elif [ "$opt" == 'DSC_Installation' ]; then
		64DSC
		break
	
	elif [ "$opt" == 'Adobe_Reader_Installation' ]; then
		Adobe_Reader
		break

	elif [ "$opt" == 'Teamviewer_Installation' ]; then
		64Teamviewer
		break

	elif [ "$opt" == 'Anydesk_Installation' ]; then
		64Anydesk
		break

	elif [ "$opt" == 'Java_Installation' ]; then
		64java14
		read -s -n1
		break

	elif [ "$opt" == 'Palemoon_Installation' ]; then
		64Palemoon14
		break

	elif [ "$opt" == 'Google_Chrome_Installation' ]; then
		echo "Sorry"
		echo "This area under maintanance"
		echo 'Press any key to Back'
		read -s -n1
		break
	
	elif [ "$opt" == 'Zoom_VC_Installation' ]; then
		64zoom
		break
	
	elif [ "$opt" == 'Basic software' ]; then
		Other
		break

	elif [ "$opt" == 'Printer' ]; then
		64Printer
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}
####################################################################################################################################
function 64Ubuntu16(){

while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Mozilla_Installation' 'DSC_Installation' 'Adobe_Reader_Installation' 'Teamviewer_Installation' 'Anydesk_Installation' 'Java_Installation' 'Palemoon_Installation' 'Google_Chrome_Installation' 'Zoom_VC_Installation' 'Basic software' 'Printer' 'Exit'
do

	if [ "$opt" == 'Mozilla_Installation' ]; then
		64Mozilla
		break

	elif [ "$opt" == 'DSC_Installation' ]; then
		64DSC
		break
	
	elif [ "$opt" == 'Adobe_Reader_Installation' ]; then
		Adobe_Reader
		break

	elif [ "$opt" == 'Teamviewer_Installation' ]; then
		64Teamviewer
		break

	elif [ "$opt" == 'Anydesk_Installation' ]; then
		64Anydesk
		break

	elif [ "$opt" == 'Java_Installation' ]; then
		64java
		break

	elif [ "$opt" == 'Palemoon_Installation' ]; then
		64palemoon1604
		break

	elif [ "$opt" == 'Google_Chrome_Installation' ]; then
		64chrome
		break
		
	elif [ "$opt" == 'Zoom_VC_Installation' ]; then
		64zoom
		break


	elif [ "$opt" == 'Basic software' ]; then
		Other
		break

	elif [ "$opt" == 'Printer' ]; then
		64Printer
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		echo 'Press any key to exit'
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}

####################################################################################################################################
function 64Ubuntu18(){

while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Mozilla_Installation' 'DSC_Installation' 'Adobe_Reader_Installation' 'Teamviewer_Installation' 'Anydesk_Installation' 'Java_Installation' 'Palemoon_Installation' 'Google_Chrome_Installation' 'Zoom_VC_Installation' 'NIC DSC Signer' 'Utilities' 'Printer' 'Exit'
do

	if [ "$opt" == 'Mozilla_Installation' ]; then
		64Mozilla
		break

	elif [ "$opt" == 'DSC_Installation' ]; then
		64DSC
		break
	
	elif [ "$opt" == 'Adobe_Reader_Installation' ]; then
		Adobe_Reader
		break

	elif [ "$opt" == 'Teamviewer_Installation' ]; then
		64Teamviewer
		break

	elif [ "$opt" == 'Anydesk_Installation' ]; then
		64Anydesk
		break

	elif [ "$opt" == 'Java_Installation' ]; then
		64java
		break

	elif [ "$opt" == 'Palemoon_Installation' ]; then
		64palemoon1804
		break

	elif [ "$opt" == 'Google_Chrome_Installation' ]; then
		64chrome
		break
		
	elif [ "$opt" == 'Zoom_VC_Installation' ]; then
		64zoom
		break

	elif [ "$opt" == 'NIC DSC Signer' ]; then
		dscsigner
		break

	elif [ "$opt" == 'Utilities' ]; then
		utility18
		break

	elif [ "$opt" == 'Printer' ]; then
		64Printer
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}
####################################################################################################################################
function 64Ubuntu20(){

while :
do
clear
Start

PS3='Choice of action. Enter the desired number and press Enter: '
select opt in 'Mozilla_Installation' 'DSC_Installation' 'Adobe_Reader_Installation' 'Teamviewer_Installation' 'Anydesk_Installation' 'Java_Installation' 'Palemoon_Installation' 'Google_Chrome_Installation' 'Zoom_VC_Installation' 'NIC DSC Signer' 'Utilities' 'Printer' 'Exit'
do

	if [ "$opt" == 'Mozilla_Installation' ]; then
		64Mozilla
		break

	elif [ "$opt" == 'DSC_Installation' ]; then
		64DSC
		break
	
	elif [ "$opt" == 'Adobe_Reader_Installation' ]; then
		Adobe_Reader
		break

	elif [ "$opt" == 'Teamviewer_Installation' ]; then
		64Teamviewer
		break

	elif [ "$opt" == 'Anydesk_Installation' ]; then
		64Anydesk
		break

	elif [ "$opt" == 'Java_Installation' ]; then
		64java
		break

	elif [ "$opt" == 'Palemoon_Installation' ]; then
		64palemoon2004
		break

	elif [ "$opt" == 'Google_Chrome_Installation' ]; then
		64chrome
		break
		
	elif [ "$opt" == 'Zoom_VC_Installation' ]; then
		64zoom
		break

	elif [ "$opt" == 'NIC DSC Signer' ]; then
		dscsigner
		break

	elif [ "$opt" == 'Utilities' ]; then
		utility20
		break

	elif [ "$opt" == 'Printer' ]; then
		64Printer
		break

	elif [ "$opt" == 'Exit' ]; then
		echo "Thank You"
		zenity --text-info --title="System Details" --filename=$DIR/about.txt --html
		#read -s -n1
		exit 1
		break
	fi
done

done
}

####################################################################################################################################
function 32Ubuntu(){
clear
Start
	if [ `lsb_release -rs` == "12.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	32Ubuntu12
	break

	elif [ `lsb_release -rs` == "14.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	32Ubuntu14
	break
	
	elif [ `lsb_release -rs` == "16.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	32Ubuntu16
	break

	elif [ `lsb_release -rs` == "18.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo "Sorry"
	echo "This area under maintanance"
	echo 'Press any key to exit'
	read -s -n1
	exit 1
	break

	fi
}

####################################################################################################################################
function 64Ubuntu(){
clear
Start
	if [ `lsb_release -rs` == "12.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo "Sorry"
	echo "This area under maintanance"
	echo 'Press any key to exit'
	read -s -n1
	exit 1
	break

	elif [ `lsb_release -rs` == "14.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	64Ubuntu14
	break

elif [ `lsb_release -rs` == "14.10" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	64Ubuntu14
	break
	
	elif [ `lsb_release -rs` == "16.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	64Ubuntu16
	break

	elif [ `lsb_release -rs` == "18.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	64Ubuntu18
	break
	
	elif [ `lsb_release -rs` == "20.04" ]; then
	clear
	Start
echo " "
echo "Operating System		:"`lsb_release -i|awk -F : '{print $2}'` `lsb_release -r|awk -F : '{print $2}'`
echo "OS Architecture			: 64 Bit"
echo "Make				: `dmidecode -s system-manufacturer`"
echo "Model				: `dmidecode -s system-product-name`"
echo "Motherboard			: `dmidecode -s baseboard-manufacturer` `dmidecode -s baseboard-product-name`"
echo "Processor			:`less /proc/cpuinfo |grep model\ name |awk -F : '{print $2}'|uniq`" 
echo "Processor(s)/Core(s)/Thread(s)	: `cat /proc/cpuinfo |grep physical\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|uniq|wc -l` / `cat /proc/cpuinfo |grep core\ id|wc -l`"
echo "Physical Memory available	: $(($(getconf _PHYS_PAGES) * $(getconf PAGE_SIZE) / (1024 * 1024))) MB"
echo " "
	echo 'Press any key to continue'
	read -s -n1
	64Ubuntu20
	break

	fi
}

####################################################################################################################################
##Progam Starting
while :
do
clear
Start

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  TARGET="$(readlink "$SOURCE")"
  if [[ $TARGET == /* ]]; then
    echo "SOURCE '$SOURCE' is an absolute symlink to '$TARGET'"
    SOURCE="$TARGET"
  else
    DIR="$( dirname "$SOURCE" )"
    echo "SOURCE '$SOURCE' is a relative symlink to '$TARGET' (relative to '$DIR')"
    SOURCE="$DIR/$TARGET" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
  fi
done
echo "Source Directory is '$SOURCE'"
RDIR="$( dirname "$SOURCE" )"
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
if [ "$DIR" != "$RDIR" ]; then
  echo "DIR '$RDIR' resolves to '$DIR'"
fi
echo "Current Directory is '$DIR'"

export SUDO_ASKPASS="$DIR/myaskpass.sh"

sudo -A apt-get install curl -y

#superuser test
[ $USER != 'root' ] && exec sudo "$0"

#the user under which we entered the system
LOGIN_USER=$(logname)
[ -z "$LOGIN_USER" ] && LOGIN_USER=$(who | head -1 | awk '{print $1}')

sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo apt-get install zenity -y
sudo apt-get install curl -y
sudo apt-get install gdebi -y
sudo apt-get install unzip -y
sudo apt-get install init-system-helpers initramfs-tools-core -y
sudo rm -r /etc/init.d/panasoniclpd-init
sudo apt-get update
sudo apt-get autoremove -y
sudo apt-get update
clear

Start
	if [ `getconf LONG_BIT` == "64" ]; then
	64Ubuntu
	else
	32Ubuntu
	fi
done
####################################################################################################################################
