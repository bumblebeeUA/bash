#!/bin/bash
---------------------------------------------------------
#We predict that we connect to remote server via root user
---------------------------------------------------------
#LIST OF VARIABLES
---------------------------------------------------------
#correct link to the id_rsa.pub
url="https://s3.amazonaws.com/arkeys/id_rsa.pub"
ssh_dir=".ssh"
message="helloo, you are connected to $HOST"
---------------------------------------------------------
#Make update and upgrade system
sudo apt update && apt upgrade -y
if [[ "$?" == 1 ]]; then
	echo "Something went wrong"
else
	echo "Updatet successfully"
fi

#It will be deprecate, cause we will install ssh in process of installation
#Install open-ssh
#sudo apt install ssh -y
#if [[ "$?" ==  ]]; then
#	echo "Something went wrong"
#else
#	echo "Installed successfully"
#fi

#Create .ssh dir and download ssh key from S3
# ^^ bullshit
# need to use this scp ~/.ssh/id_rsa.pub user@192.168.42.119:~/.ssh/authorized_keys - root required

mkdir $HOME/$ssh_dir && wget ${url} -P $HOME/$ssh_dir
if [[ "$?" == 1 ]]; then
        echo "File exist"
else
        echo "Successfully created"
fi

#Change MOTD
#Run only if you are root - must be reworked
sudo sh -c "echo $message> /etc/motd"
if [[ "$?" == 1 ]]; then
        echo "Something went wrong"
else
        echo "MOTD changed successfully"
fi

#Change PS1 var
echo "export PS1=\"\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$\"" >> $HOME/.bashrc
if [[ "$?" == 1 ]]; then
        echo "Something went wrong"
else
        echo "PS1 changed successfully"
fi


#Reconfigure sshd_conf, remove authentiation by password
#don't work
#should use sudo sed -i "s/.*PasswordAuthentication.*/PasswordAuthentication no/g" sshd_config but root required
cd /etc/ssh && cat sshd_config | grep ^PasswordAuthentication | awk '{print $2}' && sed -i 's/yes/no/g' sshd_config

#Set static ipv4 address

#Echo message with successful or error status

#Reboot
echo "Do you want to restart?"

# TO DO
# Stop running script if getting an error && echo message
# Create log file for any action && put all message for failed events
# Set static ipv4 address
# Define necessary packages and install it
# Install smtp server
# Configure smtp for
# Need to define what metrics should be collected such as:
 # RAM usage total
 # CPU usage total
 # Disk space
 # MB disk I/O read/write/time
 # MB count of running/total processes
 # MB Network input/output
 # MB Network input/output packets/sec
# Create code blocks for metrics collection
# Configure alerts notifications sending to email
# Check packets for update
# Check if new upgrades exists
# Divide whole scripts to some parts/another bash files and include it to one file
# MB create output with work that done and one of idea send this message to another PC
# New connections monitoring and send message
# MB monitoring zombie processess
# Network reachability && notifying
# CPU temperature
# ----- Zasynyt` vse v web? O_O -----
