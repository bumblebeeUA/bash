#!/bin/bash

# you have to run over each host in list
for line in `cat host_list.txt`;
do
  #here some function which will do all work
  my_engine ${line}
done

my_engine(){
  line=${1}
  number_of_columns=$(echo ${line} | awk -F "_" '{print NF}')

if [ numbers_of_column = 5 ]; then
	echo "Column equal 5"
else
	echo "Column doesn't equal 5"
fi
  # here we put logic about number of columns
  # if number of columns equal to 5, then check column 5
  # if 4 column 4
  # if 3 column 3
  # else don't check just print out line and None
}
my_engine
