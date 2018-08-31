
#!/bin/bash

#create help function

helper() {
	-h|--help	print help message
}

#logger function

logger() {

}

#exiter function

exiter() {

}

#set motd message 
motd() {

}

#set hostname
change_hostname() {
	hostname $1
}
change_hostname $1
