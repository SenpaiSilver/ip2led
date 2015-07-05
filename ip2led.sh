#!/bin/bash

IP_LIST="$(ifconfig eth0 | egrep  -o '192\.168\.1\.([0-9]+)' | sed -r 's/192\.168\.1\.([0-9]+)/\1/')"

while IFS=' ' read -a IPS; do
	for ip in "${IPS[@]}"; do
		if [ $ip != 255 ]; then
			echo "IP is $ip"
			BIN_IP="$(echo -e "obase=2\n$ip" | bc)"
			echo "Binary representation is: $BIN_IP"
			./byte2led "$BIN_IP" "0" "1" "2"
		fi
	done
done <<< "$IP_LIST"
