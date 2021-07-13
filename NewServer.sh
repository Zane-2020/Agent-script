#!/bin/bash

# This script will check the new install server.
# July 2021.
# Author: tshipamba21@gmail.com.

## CPU check

CPU_N=`nproc`
if  [ ${CPU_N}] -lt 2 ]
then
echo "CPU check FAILED"
else
echo "CPU check PASS"
fi 

## Memory check

MEM=`free -m | grep  Mem | awk '{print $2}'`
 if [ ${MEM} -lt 2000 ]
then
echo " Memory check FAILED"
else
echo " Memory check PASS"
fi 

MEM=`free -m | sed -n '2p' | awk '{print $2}'`
if [ ${MEM} -lt 2000 ]
then
echo " Memory check FAILED"
else
echo " Memory check PASS"
fi 

## Check Files if exist

if [ -f /etc/group ]
then
echo " File /etc/group exist"
else
echo " File /etc/ group ,issing"
fi 

if [ -f /etc/passwd ]
then 
echo " File /etc/passwd exist"
else
echo " File /etc/passwd missing"
fi  


if [ -f /etc/httpd ]
then 
echo " File /etc/httpd exist"
else
echo " File /etc/httpd missing"
fi

if [ -f /etc/kubernetes ]
then 
echo " File /etc/kubernetes exist"
else
echo " File /etc/kubernetes missing"
fi 

## Check User puppet

id puppet
RC=$?
if [ ${RC} -eq 0 ]
then
echo "user puppet check PASS"
else
echo "user puppet check FAILED"
fi 

## KernelVersion

KernelVersion=`uname -r | awk "." '{print $1}'`
if [ ${KernelVersion} -ge 3 ]
then 
echo "KernelVersion chaeck PASS"
else
echo "KernelVesrion check FAILED"
fi 
