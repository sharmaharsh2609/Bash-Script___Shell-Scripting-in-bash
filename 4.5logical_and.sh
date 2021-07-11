#! /bin/bash

age=25

echo "Method 1:"
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
 echo "valid age"
else
 echo "Age not valid"
fi

echo "Method 2:"
if [[ "$age" -gt 18 &&  "$age" -lt 30 ]]
then
 echo "valid age"
else
 echo "Age not valid"
fi

# && can be used in 2 ways but -a can be used in one way only

echo "Method 3:"
if [ "$age" -gt 18 -a  "$age" -lt 30 ]	#Note: -a uses single braces and && uses double braces
then
 echo "valid age"
else
 echo "Age not valid"
fi
