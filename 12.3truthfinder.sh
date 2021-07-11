#! /bin/bash

read -p 'Enter first name:  ' fname
read -p 'Enter last name:  ' lname
read -p 'Enter gender: ' gender
echo "Opening truthfinder...."

firefox https://www.truthfinder.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL\&gender=$gender
