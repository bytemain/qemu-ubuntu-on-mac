#!/bin/sh
#
TAPDEV="$1"
BRIDGEDEV="bridge1"
INET="192.168.10.1"
#

echo "use $TAPDEV"
echo "set inet $INET"
sudo ifconfig $TAPDEV inet $INET
