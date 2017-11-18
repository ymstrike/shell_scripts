#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print reverse triangle (upside down) of stars with parameter number of lines
#Version 1.0
#Date : 27/11/2017

num=${1:-5}                 # parameter number of lines , if no number givven default is 5

for ((i=$num;i>=1;i--))
do
  for ((j=i-1;j<=$num;j++))  # this loop print spaces
  do
   echo -ne " "
  done

  for ((k=1;k<=i*2-1;k++))   #this loop print stars
  do
   printf "*"
  done
  printf "\n"       # move to new line
done
