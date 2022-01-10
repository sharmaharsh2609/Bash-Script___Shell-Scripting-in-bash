#! /bin/bash

echo "Content of file initially:"
cat 7.2test_file_for_7.1file.txt

echo "1. Cut byte:"
cut -b 3,4,6 7.2test_file_for_7.1file.txt #cuts and prints 3rd,4th,5th bytes of file 7.2
cut -b 2-5 7.2test_file_for_7.1file.txt   #cuts 2nd to 5th byte of file 7.2
cut -b -5 7.2test_file_for_7.1file.txt	  #cuts from begining to 5th byte
cut -b 5- 7.2test_file_for_7.1file.txt	  #cuts from 5th byte to last

echo "2. Cut character"
cut -c 4-6 7.2test_file_for_7.1file.txt #it can also be defined in above 4 types

#by default cut takes tab as delimiter. Note: space is not considererd as delimiter in UNIX
echo "3. Cut Field"
cut -f 1 7.2test_file_for_7.1file.txt #here we need to define some delimiter otherwise it will print whole line as 1st field as spaces are not delimiters in UNIX
cut -d " " -f 1 7.2test_file_for_7.1file.txt  # here we define space as a delimiter. space will work as a seperator for fields now

echo "4. Cut complement"
cut --complement -c 5 7.2test_file_for_7.1file.txt #complements the given statement. eg- here it will print all characters except 5th character

#using this command we can change a delimiter with a newly defined delimiter
echo "5. Output Delimiter:"
cut -d " " -f 1,2 7.2test_file_for_7.1file.txt --output-delimiter=% #it will replace all spces in between first and 2nd word of every line with %

echo "6. Cut version"
cut --version
