#! /bin/bash

read -p 'Enter the domain name:  ' domain

firefox https://dmarcian.com/spf-survey/?domain=$domain https://secure.fraudmarc.com/tool/spf/$domain https://www.spf-record.com/spf-lookup/$domain https://www.agari.com/insights/tools/spf/?domain_name=$domain https://mxtoolbox.com/SuperTool.aspx?action=spf%3a$domain&run=toolpage 
