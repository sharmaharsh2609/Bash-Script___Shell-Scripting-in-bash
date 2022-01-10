#! /bin/bash 

while read p		#while loop is true until we are reading characters from input file. when it reaches at end of file and there is no more content to read then the condition is false
do
 echo $p 		#here we read file character wise and print every character
done < 6.1while.sh	#here we give 6.1while.sh as input to while loop.it will read this file characterwise and stores every time character in p
