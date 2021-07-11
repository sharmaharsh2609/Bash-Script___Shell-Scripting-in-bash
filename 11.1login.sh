#! /bin/bash

echo "List of all users logged in till now with dates is given here: "

last | awk '{print $1,$5,$6}'			# when we have multiple spaces in between words then we can't define a space as a delimeter. It will take 1st space as a delimeter and assumes next spaces as fields.

# to cut fields with multiple spaces in them, we can use awk command.
