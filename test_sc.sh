#!/bin/bash

echo "Choose word: "
read choose

random() {
	my_random=$(echo $(( 1 + RANDOM % 10 )))
}
random


#while $comp_choice == 0
#do
#    comp_choice=0
#    comp_choice=$(echo $((1 + RANDOM % 10)))
#done

main_function() {
if [[ $comp_choice =~ ^[1-3] ]];then #scissors
	RANDOM=scissors
fi

if [[ $comp_choice =~ ^[4-6] ]]; then #stone
	comp_choice=stone
fi

if [[ $comp_choice =~ ^[7-9] ]]; then #paper
	comp_choice=paper
fi
}
main_function
