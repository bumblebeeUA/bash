#!/bin/bash

compchoice=$(( ($RANDOM % 3) + 1 ))
#echo "Please choose a word: "
##echo "Please choose a word: "
#read choice
#while [[ $choice != "paper" || $choice != "scissors" || $choice != "rock" ]];
#do
#        echo "choose one of: rock, scissors, paper"
#        read choice
#done


echo "Please choose a word: "
read choice
while [[ "$choice" != "paper" && "$choice" != "scissors" && "$choice" != "rock" ]];
do
        echo "Please choose one of: rock, scissors, paper "
        read choice
done



#if [ "${choice}" != "paper" ]; then
#	echo "Please, choose one of: rock, scissors, paper"
#elif [ "${choice}" != "scissors" ]; then
#	echo "Please, choose one of: rock, scissors, paper"
#elif [ "${choice}" != "rock" ]; then
#	echo "Please, choose one of: rock, scissors, paper"
#fi

if [[ $compchoice =~ ^[1-3] ]]; then #scissors
	compchoice=scissors
elif [[ $compchoice =~ ^[4-6] ]]; then #stone
	compchoice=stone
elif [[ $compchoice =~ ^[7-9] ]]; then #paper
	compchoice=paper
fi

if [ $choice = $compchoice ]; then
	echo "$choice and $compchoice are both"
fi

if [ "${choice}" == "rock" ] && [ "${compchoice}" == "scissors" ]; then
	echo "rock bits scissors"
fi

if [ "${choice}" == "paper" ] && [ "${compchoice}" == "rock" ]; then
	echo "paper bits rock"
fi

if [ "${choice}" == "scissors" ] && [ "${compchoice}" == "paper" ];then
	echo "scissors cut paper"
fi

if [ "${choice}" == "scissors" ] && [ "${compchoice}" == "rock" ]; then
	echo "rock bits scissors"
fi

if [ "${choice}" == "rock" ] && [ "${compchoice}" == "paper" ]; then
	echo "paper cover rock"
fi

if [ "${choice}" == "paper" ] && [ "${compchoice}" == "scissors" ]; then
	echo "scissors cut paper"
fi
