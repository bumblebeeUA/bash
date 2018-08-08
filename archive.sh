#!/bin/bash
# all shell scripts should start from she-bang - 
# https://en.wikipedia.org/wiki/Shebang_(Unix)

# try to write comments before execution of each command, of what are you doing
# like creating archieve from 3 files, and why path is /home/user/bash, do you really created user with name 'user'. It's better not to use such names
tar -cvf archive.tar.gz /home/user/bash 1 2 3

# again removing
rm 1 2 3


# well done as for very first one :)

# when finish whole task upgrade script taking into account such things:
# what if 1 2 3 files doesn't exist for both commands?
# what if you don't have right to create fiels under /home/user/bash
# waht happen if archieve already exists?
# if first command failed you probably don't want to run second one, how to do that?

