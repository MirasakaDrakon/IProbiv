#!/bin/bash
echo "  ___ ____            _     _       ";
echo " |_ _|  _ \\ _ __ ___ | |__ (_)_   __";
echo "  | || |_) | '__/ _ \\| '_ \\| \\ \\ / /";
echo "  | ||  __/| | | (_) | |_) | |\\ V / ";
echo " |___|_|   |_|  \\___/|_.__/|_| \\_/  ";
echo "                                    ";

#!/bin/bash
read -p "Enter IP: " ip
echo "---------------------------------------"
echo "Searching by ipinfo.io"
curl -s https://ipinfo.io/"$ip"
echo "---------------------------------------"
echo "Searching by ipwho.is"
curl -s https://ipwho.is/"$ip"?security=1 | jq
echo "---------------------------------------"
echo "Searching by api.ip2location.io"
curl api.ip2location.io/?ip="$ip" | jq
echo "---------------------------------------"
echo "Searching by ip-api.com"
curl ip-api.com/"$ip"?fields=66846719
echo "---------------------------------------"
echo "Searching by ipwhois.io"
curl ipwhois.app/json/"$ip" | jq
