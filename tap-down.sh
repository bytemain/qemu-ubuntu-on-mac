#!/bin/sh
#
TAPDEV="$1"
BRIDGEDEV="bridge1"
#
sudo ifconfig $BRIDGEDEV deletem $TAPDEV
