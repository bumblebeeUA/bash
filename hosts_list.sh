#!/bin/bash
#print count of columns - name of host
awk -F "_" '{print NF}' host_list.txt

for X in host_list; do
grep -n [X] host_list.txt
done
