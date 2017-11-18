#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Cretae hidden file call info_user.sh and fill it with name,lname ID,
#        DOB - date of birth,POB - place of birth
#Version 1.0
#Date : 27/11/2017

# create hidden file with name info_user.sh

touch /home/.info_user.sh                      

# add fields to the file 

$(echo  "name : yuvau" >> /home/.info_user.sh)
$(echo  "lname : matityahu" >> /home/.info_user.sh)
$(echo  "ID : 058726811" >> /home/.info_user.sh)
$(echo  "DOB : 26/07/1964">> /home/.info_user.sh)
$(echo  "POB : Israel" >> /home/.info_user.sh)
