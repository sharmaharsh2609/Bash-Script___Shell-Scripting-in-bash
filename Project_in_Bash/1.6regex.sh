#! /bin/bash

read -p 'Enter the file name for searching credentials: ' f

#To print the username:
cat $f | grep -i "^username"

#To print the password:
cat $f | grep -i "^password"

#To print the key :
cat $f | grep key"

#To print the :
cat $f | grep -i "^"