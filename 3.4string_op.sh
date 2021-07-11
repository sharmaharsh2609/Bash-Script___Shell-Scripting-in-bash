#! /bin/bash
a='abc'
b='DEF'
res=0  	#res is to store the result of comparison of the strings
echo "Comparing string 'abc' with 'def' for following comarisons. (Here we are comparing the strings character wise from left to right)"
[ $a = $b ]		#Imp. note: In brackets = operator behaves similar to as == operator, i.e- = also comares 2 values in brackets and not as assignment operator
res=$(( ! $? ))		#we negate the value of exit status because exit status is 0 for true and 1 for false
echo "1. Equal_to operator: $res"
echo "(In brackets '=' also compares the values if they are equal or not)"
[ $a == $b ]
res=$(( ! $? ))
echo  "2. Double_equal_to operator: $res"
[ $a != $b ]
res=$(( ! $? ))
echo "3. Not_equal_to operator: $res" 	#It wasn't working using > and < for srt1=abc and str2=DEF. By using \> and \<, it gives correct output and use it in single braces
[ $a \> $b ]
res=$(( ! $? ))
echo "4. Greater than operator: $res"	#It compares the ASCII values of characters
[ $a \< $b ]
res=$(( ! $? ))
echo "5. Lesser than operator: $res"
[ -z  $b ]
res=$(( ! $? ))
echo "6. Null_string operator(checks if string is of 0 length or not): $res"
