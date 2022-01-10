#! /bin/bash

#task: create a program where if input is y,Y then show output as YES else id input is n, N then output is NO
# constraints: input must be x, X, y, Y

read x
echo -e "YES\nNO" | grep -i $x

#here instead of using if else we optimized the code like this.
