#! /bin/bash

#In shell, we can't use operators directly. To use operators we need to use expr command.

x=`expr 2 + 2`	#Here spaces are neccessary in between operands and operators.It will give error otherwise.
echo "Sum : $x"

#there are some characters which need to be escaped.eg- ( and ) cannot be used directly. It will give error, so we need to use \( and \). There are many more characters which need to be escaped which can be seen from 'man expr'
