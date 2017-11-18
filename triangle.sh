#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print triangle of stars with parameter number of lines
#        example to run : ./triangle 6  ==> will print 6 lines
#Version 1.0
#Date : 27/11/2017

num=${1:-5}                 # parameter number of lines , if no number givven 5 is default number
#read -p echo -e "enter number of lines : \n"
for ((i=1;i<=$num;i++))
do
  for ((j=i;j<=$num;j++))  # this loop print spaces
  do
   printf " "
  done
  for ((k=1;k<=2*i-1;k++)) 	# this loop print stars
  do
  printf "*"
  done
  printf "\n"      # move to new line
done
