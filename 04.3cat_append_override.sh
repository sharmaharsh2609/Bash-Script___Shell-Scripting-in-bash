#! /bin/bash

echo "Data of 4.4sample_file_for_4.3 initially is:"
cat 4.4sample_file_for_4.3

echo "overriding new data using cat > "
cat > 4.4sample_file_for_4.3	#after using this statement, it is not interpretting next lines, instead it displays the content andgoes to terminal. These both commands can be used in terminal. That would be more effective
echo "Data after overriding :
cat 4.4sample_file_for_4.3

echo "appending new data using cat >> "
cat >> 4.4sample_file_for_4.3
echo "Data after appending :
cat 4.4sample_file_for_4.3
