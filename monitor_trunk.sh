#!/bin/bash

value=$1
serviceIsRunning=false

#status=$(/usr/sbin/asterisk -rx "sip show peers" |grep ${value}  |awk '{print $6}')
status=$(sudo /usr/sbin/asterisk -rx "sip show peer $value"| grep -i status | cut -d' ' -f11)

if [ "$status" == OK ]; then
        serviceIsRunning=true
        echo "0:200:$status"
fi

if [ $serviceIsRunning == false ]; then
        echo "2:404:$status"
fi
