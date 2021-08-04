#! /bin/bash

read -p "Enter ip address: " ip
r=`echo $ip | grep "^[0-9]"`
x=$?

if ((x==0))
then
    echo "ip"
else
    echo "hostname"
fi