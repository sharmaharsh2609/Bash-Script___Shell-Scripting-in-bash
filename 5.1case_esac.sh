#! /bin/bash 

echo "Enter your choice from following numbers: 0 , 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 "
read choice

case $choice in
0)
echo "You have entered 0";;
1)
echo "You have entered 1";;
2)
echo "You have entered 2";;
3)
echo "You have entered 3";;
4)
echo "You have entered 4";;
5)
echo "You have entered 5";;
6)
echo "You have entered 6";;
7)
echo "You have entered 7";;
8)
echo "You have entered 8";;
9)
echo "You have entered 9";;
*)				# * is used for default case. It shows the output for all the cases that are not specified in our cases.
echo "Unknown Input ";;
esac

echo			#for a newline
echo "Is it raining? Press yes or no"
read ch

case $ch in
"yes") echo "Yes it is raining";;	#we can check for some string also
"no") echo "No it is not raining";;
*) echo "Unknown input";;
esac
