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
