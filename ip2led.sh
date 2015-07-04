#!/bin/bash

IP_LIST="$(ifconfig eth0 | egrep  -o '192\.168\.1\.([0-9]+)' | sed -r 's/192\.168\.1\.([0-9]+)/\1/')"

function output_to_led()
{
	BIN_IP="$(echo -e "obase=2\n$1" | bc)"
	echo "Binary representation is: $BIN_IP"
}

while IFS=' ' read -a IPS; do
	for ip in "${IPS[@]}"; do
		if [ $ip != 255 ]; then
			echo "IP is $ip"
			output_to_led $ip
		fi
	done
done <<< "$IP_LIST"
