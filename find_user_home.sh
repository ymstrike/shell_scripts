#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Try to find if home directory of $USERNAME - my user name is /home directory
#Version 1.0
#Date : 27/11/2017

var_home_user=$(cat /etc/passwd |grep $USERNAME |cut -d ":" -f6) # sixth word in line of $USERNAME in /etc/passwd
if [ $var_home_user = /home/$USERNAME ];then
    printf "$var_home_user is directory of $USERNAME\n"
else
    printf "$var_home_user is not directory of $USERNAME\n"
fi
