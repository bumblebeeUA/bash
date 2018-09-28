#!/bin/bash


        grep "export PS1" ~/.bashrc
	echo $?
if [[ $? == 0 ]]
then
	echo "PS1 already exist!"
fi
if [[ $? == 1 ]]
then
	echo "export PS1=\"\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$\"" >> /home/$1/.bashrc
	echo "PS1 was changed"
fi
