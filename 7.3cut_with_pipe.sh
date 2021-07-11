#! /bin/bash

cat 7.2test_file_for_7.1file.txt | head -n 3 | cut -d " " -f 1

# | is called as pipe and the output of statement before pipe is the input after using pipe 
# Here cat 7.2test_file_for_7.1file.txt will give output as content of file 7.2 . Now the content of file as output of cat is the input for head commaa=nd and then output of head command is input fir the cut command 

