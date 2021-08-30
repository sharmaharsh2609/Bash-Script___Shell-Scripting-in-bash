#! /bin/bash

declare -A arr
arr[0,0]=0
arr[0,1]=1
arr[1,0]=2
arr[1,1]=3
echo "${arr[0,0]} ${arr[0,1]}" # will print 0 1
