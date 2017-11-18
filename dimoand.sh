#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print dimoand from 2 triangles one regular and the second is reverse triangle 
#        example run : ./diamond 7 ==> whill print dimoand with 7 lines
#        if no number is givven 5 is default number of lines
#Version 1.0
#Date : 27/11/2017

num=${1:-5}                 # parameter number of lines , if no number givven default is 5

   # print the regular triangle
   # --------------------------

for ((i=1;i<=$num;i++))
do
  for ((j=i;j<=$num;j++))  # this loop print spaces
  do
   printf " "
  done
  for ((k=1;k<=2*i-1;k++))	# this loop print stars
  do
  printf "*"
  done
  printf "\n"      # move to new line
done

   # print the reverse triangle
   # ------------------------------

for ((i=$num-1;i>=1;i--))
do
  for ((j=i-1;j<=$num-1;j++))  # this loop print spaces
  do
   echo -ne " "
  done

  for ((k=1;k<=i*2-1;k++))   #this loop print stars
  do
   printf "*"
  done
  printf "\n"       # move to new line
done
