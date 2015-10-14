#!/bin/sh

service iptables restart
service arptables restart

xmessage "Block Port Scan Stoping"
