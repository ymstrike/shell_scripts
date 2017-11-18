#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Print chess on the screen of 8 X 8
#Version 1.0
#Date : 27/11/2017
for ((i=1;i<=8;i++))
do
  for ((j=1;j<=8;j++))  
  do
   if [ `expr $((i+j)) % 2` -eq 0 ] # if even number
   then
    printf "\e[0;33m  "     # print white color
   else
    printf "\e[0;40m  "     # if not even number print black color
   fi
  done
  printf "\n"      # move to new line
done
printf "\e[0m"      # return to default color
