#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot an IP address! "
echo "Syntax:  ./ping.sh 192.168.8.x"
echo "You have to leave the last byte (x) as none. eg: ./ping.sh 198.162.8"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
