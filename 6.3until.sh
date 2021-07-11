#! /bin/bash

echo "Example 1: "
i=1
choice=n		#initializing until with a random value
until [ $choice == 'y' ]	#it will go out of loop when user enters choice y
do
 echo "Statement $i printed "
 (( ++i ))
 echo "Do you want to exit? Press y if yes or press any other key if you want to continue"
 read choice
done

echo "Example 2: "

m=1
until [ $m -ge 5 ]		#it will go  out of loop when m becomes greater than 5
do
 echo $m
 m=$(( m+1 ))
 
done
