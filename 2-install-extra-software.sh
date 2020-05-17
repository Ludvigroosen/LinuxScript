#!bin/bash

echo "################################################################"
echo "####################   EXTRA  SOFTWARE   #######################"
echo "################################################################" >&2

sudo apt-get install neofetch -y

#Move Neofetch Files 
sudo wget https://raw.githubusercontent.com/Ludvigroosen/Automated-Linux-Installer/master/misc/motd.sh
sudo mv motd.sh /etc/update-motd.d/01-custom
sudo chmod +x /etc/update-motd.d/01-custom
#