#!/bin/bash

# Author: Sublime
if [ $? -eq o ]
then
echo " success"
fi

if [ -f /etc/group ]
then
echo " the file /etc/group exist"
else
echo " file  /etc/group is missing"
fi

if [ -f /etc/passwd ]
then
echo " the file /etc/passwd exist"
else
echo " the file /etc/passwd is missing"
fi

if [ -f /etc/grub.conf ]
then
echo " the file /etc/grub.conf exist"
else
echo " the file /etc/grub.conf is missing"
fi
