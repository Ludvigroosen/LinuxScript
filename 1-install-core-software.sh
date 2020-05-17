#!bin/bash

echo "################################################################"
echo "####################    CORE SOFTWARE    #######################"
echo "################################################################" >&2

sudo apt-get install -y openssh-server 
sudo apt-get install -y ufw 
#sudo apt-get install -y unattended-upgrades


sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing

#sudo bash openssh-privkey.sh
#sudo bash openssh-password.sh
