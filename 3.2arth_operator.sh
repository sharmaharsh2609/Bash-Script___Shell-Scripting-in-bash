#! /bin/bash

a=5
b=8
echo "Value of a= $a , Value of b= $b "
sum=`expr $a + $b`
diff=`expr $a - $b`
mul=`expr $a \* $b`	#Note: Here we need to use \* for multipliccation as * is a special symbbol alone
div=`expr $a / $b`
modul=`expr $a % $b`

echo "1. Sum: $sum"
echo "2. Difference: $diff"
echo "3. Multiplication result: $mul"
echo "4. Division Result: $div"
echo "5. Modulus Result: $modul"

a=$b	#assignment operator
echo -e "6. After assigning value of b to a:\ta=$a,  b=$b"

[ $a == $b ]		#as we have assigned value of b to a 3lines above. so now value of a and b are same and this will give 1 as output
echo "7. Result after comparing a and b: $(( ! $? ))" 

# If a==b statement gives true then statement is executed ssuccessfully. So it gives exit status 0. To get value 1 for true and 0 for false we negate the value of exit status
