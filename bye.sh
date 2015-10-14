#!/bin/sh
# Design done in fedora environment with use of iptables and arptables

IP=$(/sbin/arp | awk '/gateway/ { print $3 }')

arptables -P INPUT DROP
arptables -A INPUT --source-mac $IP -j ACCEPT

# Rules Iptables
./iptables-rules.sh

echo "Block Port Scan Running"
