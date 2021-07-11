#! /bin/bash

read -p 'Enter first name:  ' fname
read -p 'Enter last name:  ' lname

echo "Opening People finder...."

firefox https://www.intelius.com/search/\?affid=1117\&campid=3120\&mdm=\&src=DIME\&sid=www.peoplefinder.com\&utm_source=DIME\&utm_campaign=www.peoplefinder.com\&utm_medium=\&utm_content=\&utm_term=\&mdm=\&page=h\&origin=icm\&traffic[source]=DIME\&traffic[medium]=\&traffic[campaign]=:www.peoplefinder.com\&traffic[term]=\&traffic[content]=\&s1=www.peoplefinder.com\&s2=\&s3=\&s4=\&s5=\&traffic[funnel]=bg\&firstName=$fname\&lastName=$lname\&city=\&state=Select+state
