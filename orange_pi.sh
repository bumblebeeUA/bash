#!/bin/bash
define_user=$(whoami)

if [ $define_user != root  ]; then
	echo "Only users with root credentials can perform this script"
	exit 1
fi

# change timezone
sudo dpkg-reconfigure tzdata

#update system
sudo apt update && sudo apt upgrade -y
sudo apt install onetwork-manager
# adding motd
echo "Do you want to add MOTD? yes/no"
read response
if [ $response = "yes" ];then
echo "Which phrase you want to add? yes/no"
read motd_message
   sudo sh -c "echo $motd_message> /etc/motd"
else
echo "It's your choice :)"
fi

#set ssh only by public key
cd /etc/ssh && sudo sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" sshd_config

#Configure Wi-Fi
echo "SSID_USERNAME"
read SSID_USERNAME
echo "SSID_PASSWORD"
read -s SSID_PASSWORD
nmcli d wifi connect $SSID_USERNAME password $SSID_PASSWORD
if [ "$?" -eq "0"  ]; then
	echo "Successful"
else
	echo "Unsuccessful"
fi
