#! /bin/bash

echo "Example 1: "
#similar to for(i=1;i<10;) but here if do not give 3rd argument then by default it is i++
for i in {1..10} # it means i=1;i<10; by default it increments i by 1 every iteration if we do not specify it
do
 echo $i
done

echo "Example 2:"

#similar to for(i=1;i<10;i++)
for i in {1..10..2}	#here we specify that i increments by 2 every iteration
do
 echo $i
done
