#! /bin/bash

num1=2.44
num2=4.52
echo "num1=$num1 , num2=$num2"
echo "Sum:"			#as expr and awk are unable to perform operations on floating point numbers. So we use bc command
echo "$num1+$num2" | bc		#bc command takes the output of as input and perform the given operation 

echo "Mul:"
res=`echo "$num1*$num2" |bc`	#we can store any operation's value like this
echo $res

echo "Div(Without using scale):"
echo "$num1/$num2" | bc		#by default scale=0

echo "Div(With scale=3):"
echo "scale=3;$num1/$num2" | bc		#as scale=3, so it will show upto 3decimal points

echo "Sqrt_of _num1(with scale 5):"
echo "scale=5;sqrt($num1)" | bc -l   	# -l uses the math library.

