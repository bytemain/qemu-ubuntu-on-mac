#!/bin/bash

echo "use $1"
ifconfig bridge0 addm $1
