#!/bin/bash

while true; do
	ps aux | grep -v grep | grep array_vpnc64 >/dev/null
	if [ $? -ne 0 ]; then 
		nohup /usr/local/array_vpn/array_vpnc64 -host ${VPN_HOST} -user ${VPN_USER} -passwd ${VPN_PASS} -port ${VPN_PORT} & 
	else 
		sleep 10; 
	fi; 
done

