#! /bin/bash

spf() {
    read -p 'Enter the domain name:  ' domain

    firefox https://dmarcian.com/spf-survey/?domain=$domain https://secure.fraudmarc.com/tool/spf/$domain https://www.spf-record.com/spf-lookup/$domain https://www.agari.com/insights/tools/spf/?domain_name=$domain https://mxtoolbox.com/SuperTool.aspx?action=spf%3a$domain&run=toolpage 

    echo -e "\nChecking with host command... "
    host -t txt $domain | grep spf

    echo -e "\nChecking with dig command..."
    dig -t txt $domain | grep spf

    echo -e "\nChecking with nslookup... "
    nslookup -type=txt $domain | grep spf
    x=$?    #storing value of exit status in x

    if (($x==0))    #if exit status is 0, means spf is found successfully
    then
    echo -e "\nValid spf record "
    else            #else if exit status is not 0 , means spf ckeck was unsuccessful
    echo -e "\nSpf record not found!!"
    fi
}

dns() {
    read -p 'Enter the domain name: ' domain

    firefox https://www.virustotal.com/gui/domain/$domain/relations https://searchdns.netcraft.com/?restriction=site+contains\&host=$domain\&position=limited https://www.threatcrowd.org/domain.php?domain=$domain 
}

ppl_search() {
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
}

port_scan() {
    read -p 'Enter IP adress for scanning port: ' ip

    nc -zv $ip 1-65535	#z is for scanninf open ports, v for verbose information
	    		#we use 1-65535 coz total no. of ports available are 65535
}

ip_scan() {
    read -p 'Enter IP address or hostname: ' ip			#ip is variable which stores user input (IP address)
    var=`echo $ip | grep "^[0-9]"`  #grep checks for strings starting with 0-9
    x=$?    #if ip starts with integer, it means input is ip address aand thus exit grep will successfully find string starting with integer.
    #if ip is ip adress then exit status is 0 else if ip is hostname then exit status is 1
    
    #we are checking it because in case of ip, ttl is 6th field and in case of hostname, ttl is 7tjhj field
    if ((x==0))
    then
        ttl_value=`ping $ip | head -2 | tail -1 | awk '{print $6}' | cut -d "=" -f 2`		#Here head -2 gives us 1st two lines of ping $ip as output, which is input to tail -1. This taol -1 gives us thw last of the two lines(which is 2nd line of $IP). So simply we give 2nd line as input to awk command
        #awk outputs the 6th field of ping info(which is ttl=<ttlvalue>). Then we cut ttl from ttl=<value> which gives us the ttl_value only as output
        #Alternatively we can use: ttl_value=`ping $ip | head -2 | tail -1 | cut -d " " -f 6 |  cut -d "=" -f 2`
    else
        ttl_value=`ping $ip | head -2 | tail -1 | awk '{print $7}' | cut -d "=" -f 2`
    fi
    echo "TTL value=$ttl_value"

    case $ttl_value in
    64)
    	echo "Operating System: Linux";;
    128)
	    echo "Operating System: Windows";;
    *)
    	echo "Some other OS";;
    esac
}

regx() {

    read -p 'Enter the file name for searching credentials: ' f

    #To print the username:
    cat $f | grep -i "^username"

    #To print the password:
    cat $f | grep -i "^password"

    #To print the key :
    cat $f | grep key

}

comp_search() {
    read -p "Enter the domain name or IP address of the comapny for which you want to get info.." ip2
    whois $ip2 | grep -B 100 'Last update'  #it will print 100 lines before line which contains words <Last update>. because there is so unneccessary stuuf after this line which needs to be removed.
}

#main program
while true
do
    echo -e "\nEnter your choice to perform the desired operation: \n1. Find spf records for a domain. \n2. Find dns records(subdomain names in particular) for a doamin. \n3. People search (from people search engine). \n4. Port Scanning. \n5. IP Scannning(Know OS name from IP). \n6. regex. \n7. Search info about a company. \n8. exit"
    read ch

    case $ch in
    1)
        spf   ;;
    2)
        dns   ;;
    3)
        ppl_search  ;;
    4)
        port_scan   ;;
    5)
        ip_scan ;;
    6)
        regx   ;;
    7)
        comp_search ;;
    8)
        break   ;;
    *)
        echo "Wrong choice.... Try entering from 1-7 "
        sleep 2 ;;
    esac
done