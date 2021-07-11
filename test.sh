#! /bin/bash

#! /bin/bash

echo -e "Enter the character : \c"
read value

case $value in 
[a-z] )
 echo "User entered $value from a to z" ;;
[A-Z] )
 echo "User entered $value from A to Z" ;;   #LANG=C
[0-9] )
 echo "User entered $value from 0 to 9" ;;
? )
 echo "User entered $value from special character" ;; 
* )
 echo "Unknown input" ;;
 esac
