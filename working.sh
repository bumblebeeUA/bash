#!/bin/bash
#TODO: change function name, add description comment
my_fun(){
  i=1
while [ $# -gt 0 ]
  do 
  i=$(($i*$1))
  shift
  done 
  echo $i
  }

#TODO: the function supposed to use few arguments not one
my_fun 20

#TODO: again change name and add description
my_fun(){
  i=0
while [ $# -gt 0 ]
  do 
  i=$(($i+$1))
  shift
  done 
  echo $i
  }

#TODO: again number of arguments should be given
my_fun 20

# function to get sum of arguments using for loop
get_sum_using_for(){

    #create result value equal to 0, we going to increment it by argument value during loop iterations
    result=0

    # it might worth to check if variable is a number, we can't run mathematical
    # operations on non number values, we need regular expr to check that
    re='^[0-9]+$'

    for argument in "$@"

        do
            # that's how we check if variable stores numeric value
            if [[ ${argument} =~ ${re} ]]; then
                result=$((${result}+${argument}))
            else
                echo "WARNING: argument ${argument} is not numeric"
            fi
    done

    echo ${result}
}

get_sum_using_for 1 2 3 4 aa

#TODO: write similar for arguments multiplication

#TODO: write function which checks whether arguments are numeric, alphabetic or have special characters

#TODO: script to configure new box
#      write helper
#      logger
#      exiter
#      set motd message on the box
#      set host name by given argument
#      set PS1
#      configure ssh keys
