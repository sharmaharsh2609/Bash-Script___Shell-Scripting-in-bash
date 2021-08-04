#! /bin/bash

read -p 'Enter first name:  ' fname
read -p 'Enter last name:  ' lname


while true
do
	echo -e "Enter a number from following for gender:\n1. male\n2. female\n3. other"
	read x

	case $x in
	1)
		firefox https://www.spokeo.com/$fname-$lname https://www.whitepages.com/name/$fname-$lname https://www.truthfinder.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL\&gender=$male https://www.intelius.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL https://www.instantcheckmate.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL\&gender=$male https://www.intelius.com/search/\?affid=1117\&campid=3120\&mdm=\&src=DIME\&sid=www.peoplefinder.com\&utm_source=DIME\&utm_campaign=www.peoplefinder.com\&utm_medium=\&utm_content=\&utm_term=\&mdm=\&page=h\&origin=icm\&traffic[source]=DIME\&traffic[medium]=\&traffic[campaign]=:www.peoplefinder.com\&traffic[term]=\&traffic[content]=\&s1=www.peoplefinder.com\&s2=\&s3=\&s4=\&s5=\&traffic[funnel]=bg\&firstName=$fname\&lastName=$lname\&city=\&state=Select+state
		break ;;
	2)
		firefox https://www.spokeo.com/$fname-$lname https://www.whitepages.com/name/$fname-$lname https://www.truthfinder.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL\&gender=$female https://www.intelius.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL https://www.instantcheckmate.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL\&gender=$female https://www.intelius.com/search/\?affid=1117\&campid=3120\&mdm=\&src=DIME\&sid=www.peoplefinder.com\&utm_source=DIME\&utm_campaign=www.peoplefinder.com\&utm_medium=\&utm_content=\&utm_term=\&mdm=\&page=h\&origin=icm\&traffic[source]=DIME\&traffic[medium]=\&traffic[campaign]=:www.peoplefinder.com\&traffic[term]=\&traffic[content]=\&s1=www.peoplefinder.com\&s2=\&s3=\&s4=\&s5=\&traffic[funnel]=bg\&firstName=$fname\&lastName=$lname\&city=\&state=Select+state
		break ;;
	3)
		firefox https://www.spokeo.com/$fname-$lname https://www.whitepages.com/name/$fname-$lname https://www.truthfinder.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL\&gender=$others https://www.intelius.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL https://www.instantcheckmate.com/search/?firstName=$fname\&lastName=$lname\&city=\&state=ALL\&gender=$others https://www.intelius.com/search/\?affid=1117\&campid=3120\&mdm=\&src=DIME\&sid=www.peoplefinder.com\&utm_source=DIME\&utm_campaign=www.peoplefinder.com\&utm_medium=\&utm_content=\&utm_term=\&mdm=\&page=h\&origin=icm\&traffic[source]=DIME\&traffic[medium]=\&traffic[campaign]=:www.peoplefinder.com\&traffic[term]=\&traffic[content]=\&s1=www.peoplefinder.com\&s2=\&s3=\&s4=\&s5=\&traffic[funnel]=bg\&firstName=$fname\&lastName=$lname\&city=\&state=Select+state
		break ;;
	*)
		echo -e "Wrong choice!!\n Try printing from 1-3"
		sleep 2 ;;
	esac
done