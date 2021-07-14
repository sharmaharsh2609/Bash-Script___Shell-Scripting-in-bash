#! /bin/bash

read -p 'Enter IP address: ' ip			#ip is variable which stores user input (IP address)
ttl_value=`ping $ip | head -2 | tail -1 | awk '{print $6}' | cut -d " " -f 2`		#Here head -2 gives us 1st two lines of ping $ip as output, which is input to tail -1. This taol -1 gives us thw last of the two lines(which is 2nd line of $IP). So simply we give 2nd line as input to awk command
#awk outputs the 6th field of ping info(which is ttl=<ttlvalue>). Then we cut ttl from ttl=<value> which gives us the ttl_value only as output
#Alternatively we can use: ttl+value=`ping $ip | head -2 | tail -1 | cut -d " " -f 6 |  cut -d "=" -f 2`
echo "TTL value=$ttl_value"

case $ttl_value in
64)
	echo "Operating System: Linux";;
128)
	echo "Operating System: Windows";;
*)
	echo "Some other OS";;
esac
