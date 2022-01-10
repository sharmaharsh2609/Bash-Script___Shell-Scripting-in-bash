#! /bin/bash

#Relational operators using if statement

count=10
res=0		#res is to store the result of comparisons. res=0 if false and 1 if true
echo "comparing value of 10 with 9 for following operators:"

echo "Method 1: "

[ $count -eq 9 ]
res=$?			#res stores the exit status
echo "1. Equal_to operator: $(( ! $res )) " 	#as exti status=0 for success(means command executed successfully as it gives true) and 1 for unsuccess so we negate it's value to get 1 for success and 0 for unsuccess

[ $count -ne 9 ]
res=$?
echo "2. Not_equal_to operator: $(( ! $res )) "

[ $count -gt 9 ] 
res=$?
echo "3. Greater_than operator: $(( ! $res )) "

[ $count -lt 9 ]
res=$?
echo "4. Lesser_than operator: $(( ! $res )) "

[ $count -ge 9 ]
res=$?
echo "5. Greater_than__equal_to operator: $(( ! $res )) "

[ $count -le 9 ]
res=$?
echo "6. Lesser_than_equal_to operator: $(( ! $res )) "


echo "Method 2: "
echo "In 2nd method = and  == can't be used for comparing integers. == is only used for comparing strings"

(( $count != 9 ))	#Note: For using these operators we need to use double paranthesis. It may give wrong values using []
res=$?
echo "2. Not_equal_to operator: $(( ! $res )) "

(( $count > 9 ))
res=$?
echo "3. Greater_than operator: $(( ! $res )) "

(( $count < 9 ))
res=$?
echo "4. Lesser_than operator: $(( ! $res )) "

(( $count >= 9 ))
res=$?
echo "5. Greater_than__equal_to operator: $(( ! $res )) "

(( $count <= 9 ))
res=$?
echo "6. Lesser_than_equal_to operator: $(( ! $res )) "
