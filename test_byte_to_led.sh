#!/bin/bash

while true; do
	for i in $(seq 255); do
		./byte2led "$(echo -e "obase=2\n$i" | bc)" 0 1 2
		sleep 0.25
	done
done
