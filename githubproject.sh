#!/bin/bash
date
cat /home/faizan/pingable | while read machine
do

ping -c 1 -W 1 "$machine" > /dev/null
if [ $? -eq 0 ]; then

  echo "$machine is alive"
else
  echo "$machine is not pinging for the faizan"
fi
done


