#! /bin/bash

read -p 'Enter first name:  ' fname
read -p 'Enter last name:  ' lname

echo "Opening spokeo...."

firefox https://www.spokeo.com/$fname-$lname
