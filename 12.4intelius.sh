#! /bin/bash

read -p 'Enter first name:  ' fname
read -p 'Enter last name:  ' lname

echo "Opening intelius...."

firefox https://www.intelius.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL
