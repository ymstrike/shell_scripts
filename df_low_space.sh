#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Show by df command the low space of disk
#Version 1.0
#Date : 27/11/2017

# result get the name of disk and percent of use
result=$(df -H | grep -vE '^Filesystem'| awk '{print $1 ":" $5}')
max_achuz_nizul=0

#loop to find the max precent of use

for line in $result;
do
  achuz=$(echo $line |awk -F":" '{print $2}' |cut -d"%" -f1)
  if [ $achuz -gt $max_achuz_nizul ];then
   max_achuz_nizul=$achuz
  fi
done  

#loop to find the line that precents eq to  max_achuz_nizul and print it
for line in $result;
do
  achuz=$(echo $line |awk -F":" '{print $2}' |cut -d"%" -f1)
  diskf=$(echo $line |awk -F":" '{print $1}' |cut -d"%" -f1)
  if [ $achuz -eq $max_achuz_nizul ];then
   printf "$diskf is low space disk Use $max_achuz_nizul%%\n"
  fi
  break;  #  after found exit loop
done
