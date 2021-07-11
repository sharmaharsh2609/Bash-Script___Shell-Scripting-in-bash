#! /bin/bash

ch=0		#initializing choice with 0 initially
while [ $ch != 7 ] 	#repeat the loop until choice is not equal to 7
do
 echo -e "\nWhich operation do you want to perform?Enter your choice(Enter the number for corresponding operation)\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\n5.Modulus\n6.Square\n7.Exit"
 read ch
 if [ $ch -eq 1 ]
 then
  echo "Enter 2 numbers to be added: "
  read a ; read b
  res=`expr $a + $b`
  echo "result of addition is: $res"
 elif [ $ch -eq 2 ]
 then
  echo "Enter 2 numbers to be Subtracted(Write minuend first and then subtrahend) : "
  read a ; read b
  res=`expr $a - $b`
  echo  "result of subtraction is: $res"
 elif [ $ch -eq 3 ]
 then
  echo "Enter 2 numbers for multiplication: "
  read a ; read b
  res=`expr $a \* $b`
  echo  "result of multiplication is: $res"
 elif [ $ch -eq 4 ]
 then
  echo "Enter 2 numbers for division(Dividend first and then divisor): "
  read a ; read b
  res=`expr $a / $b`
  echo  "result of division is: $res"
 elif [ $ch -eq 5 ]
 then
  echo "Enter 2 numbers to operate modulus operation: "
  read a ; read b
  res=`expr $a % $b`
  echo  "result of modulus operation is: $res"
 elif [ $ch -eq 6 ]
 then
  echo "Enter a numbers to find its squarw: "
  read a 
  res=`expr $a \* $a`
  echo  "Square of given number is: $res"
 else
  if [ $ch != 7 ]
  then
   echo "Wrong choice.Enter again."
  fi
 fi
done
