#!/bin/bash
create_files () {
	i=1;
	end=$1;
	for ((i=1; i<=end; i++))
	do
	touch file${i}.txt
done
}

create_files
