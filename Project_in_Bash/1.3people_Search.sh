#! /bin/bash

read -p 'Enter first name:  ' fname
read -p 'Enter last name:  ' lname

echo "Opening spokeo for search of $fname $lname...."

firefox https://www.spokeo.com/$fname-$lname
