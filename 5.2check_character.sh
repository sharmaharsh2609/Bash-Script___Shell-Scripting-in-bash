#! /bin/bash

#Here > operator wasn't working correctly for strings comparison. After using \> it worked properly.

read -p 'Enter character:  ' ch

echo "Method 1:"
if [ $ch \> 'a' ] || [ $ch == 'a' ] && [ $ch \< 'z' ] || [ $ch == 'z' ]		#there is no operator like <=, >= to compare strings.So we do > , = seperately
then
 echo "Lower case"
elif [ $ch \> 'A' ] || [ $ch == 'A' ] && [ $ch \< 'Z' ] || [ $ch == 'Z' ]
then
 echo "Upper case"
elif (( "$ch" >= "0" )) && (( "$ch" <= "9" ))		# <= and >= for comaring integers, require (( )) for execution
then
 echo "Digit"
else
 echo "Special Character"
fi


echo "Method 2:"
if  [[ $ch =~ [a-z] ]]
then
 echo "Lower case"
elif [[ $ch =~ [A-Z] ]]
then
 echo "Upper Case"
elif [[ $ch =~ [0-9] ]]
then
 echo "Digit"
else
 echo "Special Character"
fi
