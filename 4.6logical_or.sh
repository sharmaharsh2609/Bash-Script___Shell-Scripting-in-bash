\#! /bin/bash

age=25

echo "Method 1:"
if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
then
 echo "valid age"
else
 echo "Age not valid"
fi

echo "Method 2:"
if [[ "$age" -gt 18 || "$age" -lt 30 ]]
then
 echo "valid age"
else
 echo "Age not valid"
fi

# || can be used in  2 different ways but -o can only be used in single way

echo "Method 3:"
if [ "$age" -gt 18 -o "$age" -lt 30 ]  #Note: -o uses single brace>
then
 echo "valid age"
else
 echo "Age not valid"
fi
