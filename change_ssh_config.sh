#!/bin/bash

cd /etc/ssh && cat sshd_config | grep ^PasswordAuthentication | awk '{print $2}' && sed -i 's/yes/no/g' sshd_config

