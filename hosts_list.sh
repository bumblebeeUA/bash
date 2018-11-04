#!/bin/bash
#print count of columns - name of host
awk -F "_" '{print NF}' host_list.txt

for X in host_list; do
grep -n [X] host_list.txt
done

# you have to run over each host in list
for line in `cat host_list.txt`;
do
  #here some function which will do all work
  my_engine ${host}
done

my_engine(){
  line=${1}
  number_of_columns=$(echo ${host} | awk -F "_" '{print NF}')
  
  # here we put logic about number of columns
  # if number of columns equal to 5, then check column 5
  # if 4 column 4
  # if 3 column 3
  # else don't check just print out line and None
}
