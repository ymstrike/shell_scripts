#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Try to find if $USERNAME - my user name exist in sudo/wheel group
#Version 1.0
#Date : 27/11/2017

var_wheel=$(groups $USERNAME |cut -d " " -f4) # fourth word in line of $USERNAME in groups
if [ $var_wheel = wheel ];then
    printf "$USERNAME Exists in sudu/wheel\n"
else
    printf "$USERNAME NOT Exists in sudu/wheel\n"
fi
