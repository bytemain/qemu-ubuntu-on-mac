sudo ifconfig bridge0 192.168.100.1/24
sudo sysctl -w net.inet.ip.forwarding=1
sudo pfctl -f ./nat-config -e
sudo /usr/libexec/bootpd -D
