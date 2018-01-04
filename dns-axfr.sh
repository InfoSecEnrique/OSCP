#!/bin/bash
# Simple Zone Transfer Bash Script
# $1 is the first argument given after the bash script
# Check if argument was given, if not, print usage
if [ -z "$1" ]; then
echo "[*] Simple Zone Transfer Script"
echo "[*] Usage  : $0 <domain> "
exit 0
fi

# If argument was given, identify the DNS servers for the domain
for server in $(host -t ns $1 |cut -d " " -f 4);do host -l $1 $server  |grep "has address"
done
