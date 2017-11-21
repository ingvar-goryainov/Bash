#!/bin/bash

COMMAND=`sudo cat /etc/resolv.conf | grep -c nameserver`
echo $COMMAND

exit 0
