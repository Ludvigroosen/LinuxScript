#!bin/bash

#This script is made to make sure that everything is prepared
#Run at you're own risk. 

echo "################################################################"
echo "####################    DOWNLOADING..    #######################"
echo "################################################################" >&2

wget https://raw.githubusercontent.com/Ludvigroosen/LinuxScript/master/1-install-core-software.sh
wget https://raw.githubusercontent.com/Ludvigroosen/LinuxScript/master/2-install-extra-software.sh
wget https://raw.githubusercontent.com/Ludvigroosen/LinuxScript/master/motd.sh
wget https://raw.githubusercontent.com/Ludvigroosen/LinuxScript/master/ssh-password.sh
wget https://raw.githubusercontent.com/Ludvigroosen/LinuxScript/master/ssh-privkey.sh

#Test to see if user is running with root privileges.
if [[ "${UID}" -ne 0 ]]
then
echo "################################################################"
echo "####################     S U D O ? ?     #######################"
echo "#######################################+#########################" >&2
 exit
fi

echo "Starting maintenance"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt clean -y

echo "Starting full install"
sudo bash 1-install-core-software.sh
sudo bash 2-install-extra-software.sh

echo "Starting maintenance after install"
sudo apt-get install -f -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo apt clean -y

sudo ufw enable

echo "################################################################"
echo "####################    T H E   E N D    #######################"
echo "################################################################"