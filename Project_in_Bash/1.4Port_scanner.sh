#! /bin/bash

read -p 'Enter IP adress for scanning port: ' ip

nc -zv $ip 1-65535	#z is for scanninf open ports, v for verbose information
			#we use 1-65535 coz total no. of ports available are 65535
