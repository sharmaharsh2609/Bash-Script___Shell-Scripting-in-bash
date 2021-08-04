#! /bin/bash

read -p 'Enter the domain name: ' domain

firefox https://www.virustotal.com/gui/domain/$domain/relations https://searchdns.netcraft.com/?restriction=site+contains\&host=$domain\&position=limited https://www.threatcrowd.org/domain.php?domain=$domain 
