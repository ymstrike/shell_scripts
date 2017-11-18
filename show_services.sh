#!/bin/bash
#Name   :Yuval Matityahu
#Purpose:Show "services" - files in directory /etc/systemd/system
#Version 1.0
#Date : 27/11/2017

for file in $(ls /etc/systemd/system);do
  printf "$file\n"
done
