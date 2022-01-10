#! /bin/bash

read -p "Enter IP address: " ip

OS_ttl=`ping -c 1 $ip | cut -d " " -f 6 | grep ttl | cut -d "=" -f 2`
#Here ping -c 1 will send only 1 packet and output of this will be input for first cut
#cut .... -f 6 will show the value of ttl as 6th field is ttl(in some systems it is 7th field) as gives ttl=64 or ttl=<ttl_value> as input to next grep command
# here we have first line some info of ping and 2nd line is packet sent in ping command.But we want only 2nd line to get ttl. we use grep command which will show 2nd line only as ttl is not present is 1st line
#cut .... -f 2 have = as delimiter. So it will show us only ttl value and not whole field ttl=<ttl_value>

case $OS_ttl in
64)
echo "This is a UNIX/LINNUX system as ttl value is 64";;
128)
echo "This is a Windows system as ttl value is 128";;
254)
echo "This is a Solaris/AIX system as ttl value is 254";;
*)
echo "This is OS other than LINUX,Windows,AIX";;
esac

