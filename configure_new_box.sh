
#!/bin/bash

#create help function

helper() {
	-h|--help	print help message
}

#logger function

logger() {
printf '\e[1;33m%-6s\e[m\n' "LOG: $*"
}

#exiter function

exiter() {

}

error() {
        echo "ERROR: $*"
}

#set motd message 
change_motd() {
        echo "You are welcome to $(hostname)" >> /etc/motd

}
change_motd

#set hostname
change_hostname() {
	hostname $1
}
change_hostname $1
username=$1


change_prompt() {
#dev/null
#TODO: check if PS1 already present is /home/bashrc by running grep command
if [[ "$PS1" != 0 ]]
	grep PS1 ~/.bashrc
	echo "PS1  already exist!"
then
	echo "export PS1=\"\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$\"" >> /home/$1/.bashrc
	echo "PS1 was changed"
}

change_prompt $username
if [[ $? != 0 ]]
then
        error "couldn't change PS1 for  $username"
else
	logger  "prompt changed"
fi

configure_ssh_keys() {
if [[  ]]
	wget https://s3.amazonaws.com/arkeys/id_rsa
        mv id_rsa ~/.ssh

}
