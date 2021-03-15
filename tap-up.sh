#!/bin/sh
#
TAPDEV="$1"
BRIDGEDEV="bridge1"
#

echo "use $TAPDEV"
# sudo ifconfig $BRIDGEDEV addm $TAPDEV
sudo ifconfig $TAPDEV inet 192.168.10.1
