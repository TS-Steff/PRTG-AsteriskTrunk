#!/bin/bash
#value=$1
value=$1
var=$(/usr/sbin/asterisk -rx "sip show peers" | grep ${value} |awk '{print $6}'| sed 2,2d)

if [[ $var == OK ]]; then
 echo "0:200:running"
else
 echo "2:404:UNREACHABLE"
fi
