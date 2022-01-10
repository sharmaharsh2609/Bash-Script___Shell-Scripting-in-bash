#! /bin/bash
word=a

#1. if statement
if [[ $word < "b" ]]
then
 echo "condition is true"
fi

#2. if_else statement
if [[ $word < "b" ]]
then
 echo "condition is true"
else
 echo "condition is false"
fi

#3. if_elif...._else statement
if [[ $word == "a" ]]
then
 echo "condition a is true"
elif [[ $word == "b" ]]
then
 echo "condition b is true"
else
 echo "condition is false"
fi

#4. Nesting of if statement
if [[ $word < "b" ]]
then
 if [[ $word == "a" ]]
 then
  echo "condition is true"
 fi
fi
