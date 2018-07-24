mkdir OGUZHAN


cd OGUZHAN


wget splunk.com



grep -oP '(?<=href="http://)[^"]*(.splunk.com")' index.html | sort | uniq | sed 's/"//' > DNS_info.txt



xargs -I % -a DNS_info.txt host % > DNS_addresses.txt



grep -oP '(?<=address).*' DNS_addresses.txt | sort > All_IPs.txt


grep -oP '(?<=address).*' DNS_addresses.txt | sort | uniq -d > Duplicate_IPs.txt




echo "ALL PROCESSES ARE SUCCESSFULY DONE!
"


echo "	-splunk.com web source has been downloaded."



echo "	-Subdomains are extracted and saved into DNS_info.txt file."


echo "	-Addresses of all DNS are saved into DNS_addresses.txt file."


echo "	-Subdomain IPs are discovered and saved into All_IPs.txt file."



echo "	-Duplicate IPs filtered and saved under Duplicate_IPs.txt file."


echo " "