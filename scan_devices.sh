#!/bin/sh

for i in {1..255}
do
   ping -a 192.168.1.$i -W 1 -m 1 -t 1 > /dev/null
   result=$?
   echo "step $i"
   if [ $result != 2 ] 
   then 
      echo "192.168.1.$i"
      nslookup 192.168.1.$i
   fi
done
