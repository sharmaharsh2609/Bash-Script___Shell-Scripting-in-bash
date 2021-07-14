#! /bin/bash

read -p 'Enter the domain name:  ' domain
echo "Opening Virustotal(Relation tab) to see the subdomains...."

firefox https://www.virustotal.com/gui/domain/$domain/relations
