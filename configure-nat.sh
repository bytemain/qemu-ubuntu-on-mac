#!/bin/sh

sudo ifconfig bridge0 192.168.100.1/24
sudo sysctl -w net.inet.ip.forwarding=1
sudo pfctl -F all
sudo pfctl -f ./nat-config -e
sudo cp ./bootpd.plist /etc/bootpd.plist
sudo /usr/libexec/bootpd -D
