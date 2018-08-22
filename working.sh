#!/bin/bash
my_fun(){
  i=1
while [ $# -gt 0 ]
  do 
  i=$(($i*$1))
  shift
  done 
  echo $i
  }


my_fun 20

my_fun(){
  i=0
while [ $# -gt 0 ]
  do 
  i=$(($i+$1))
  shift
  done 
  echo $i
  }


my_fun 20
