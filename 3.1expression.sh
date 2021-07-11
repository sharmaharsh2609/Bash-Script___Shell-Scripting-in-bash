#! /bin/bash

#In shell, we can't use operators directly. To use operators we need to use expr command.

x=`expr 2 + 2`	#Here spaces are neccessary in between operands and operators.It will give error otherwise.
echo "Sum : $x"

