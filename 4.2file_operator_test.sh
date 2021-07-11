#! /bin/bash

echo -e "Enter the file name : \c"	# using \c cursor do not move to next line. So we can take input in the same line
read file_name

echo "1. -e(Checks if file exists or not)"
if [ -e $file_name ]	#above -e used in echo is different from that in if command 
then
echo "$file_name found"
else
echo "$file_name not found"
fi

echo "2. -f(Checks if file exists and file is regular or not)"  #similar to -e but also checks whether file is regular or not
if [ -f $file_name ]
then
 echo "$file_name found and file is regular"
else
 echo "$file_name not found or file is not regular"
fi

echo "3. -d(Checks if file is a directory or not)"
if [ -d $file_name ]
then
 echo "$file_name is a directroy"
else
 echo "$file_name is not a directory"
fi

echo "4. -c(Checks if file is character special file(file that contains normal data))" 
if [ -c $file_name ]
then
 echo "$file_name is character special file"
else
 echo "$file_name is not a character special file"
fi

echo "5. -b(Checks if file is block special file(file that contains media data or block data such as pictures, videos etc))"
if [ -b $file_name ]
then
 echo "$file_name is block special file"
else
 echo "$file_name is not a block special file"
fi

echo "6. -s(Checks whether file is non-empty or not)"
if [ -s $file_name ]
then
 echo "$file_name is non-empty file"
else
 echo "$file_name is empty file"
fi

echo "7. -r(Checks whether file has read permission)"
if [ -r $file_name ]
then
 echo "$file_name has read permission"
else
 echo "$file_name don't have read permission"
fi

echo "8. -w(Checks whether file has write permission)"
if [ -w $file_name ]
then
 echo "$file_name has write permission"
else
 echo "$file_name don't have write permission"
fi

echo "9. -x(Checks whether file has eexcute permission)" 
if [ -x $file_name ]
then
 echo "$file_name has execute permission"
else
 echo "$file_name don't have execute permission"
fi
