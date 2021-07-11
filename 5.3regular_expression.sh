#! /bin/bash

# =~ operator matches the regular expression

a="abcd2"	#we can take a as input from user also
if [[ $a =~ ^[a-z]*[0-9]$ ]]	# ^ matches start of string and $ matches end of string
then
 echo "matching"
else
 echo "not matching"
fi
