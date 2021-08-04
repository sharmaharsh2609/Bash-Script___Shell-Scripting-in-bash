#! /bin/bash

read -p "Enter domain name: " domain

echo -e "\nChecking with host command... "
host -t txt $domain | grep spf

echo -e "\nChecking with dig command..."
dig -t txt $domain | grep spf

echo -e "\nChecking with nslookup... "
nslookup -type=txt $domain | grep spf
x=$?    #storing value of exit status in x

if (($x==0))    #if exit status is 0, means spf is found successfully
then
 echo -e "\nValid spf record "
else            #else if exit status is not 0 , means spf ckeck was unsuccessful
 echo -e "\nSpf record not found!!"
fi
