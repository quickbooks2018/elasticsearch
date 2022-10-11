#!/bin/bash
# https://stackoverflow.com/questions/72059973/how-do-i-use-shell-variables-in-sh-file-for-a-elasticsearch-curl-post
# https://stackoverflow.com/questions/1194882/how-to-generate-random-number-in-bash

timestamp=`date +"%Y-%m-%d %T"`
system_name=`hostname`
cpu=`echo $((1 + $RANDOM % 100))`


es=`curl -u 'admin':'Pakistan1982!@#$%' -XPOST "https://search-cloudgeeks-y42nrqpnslyr6vgwweqpnwj7ai.us-east-1.es.amazonaws.com:443/qasim_timestamps/_doc" -H 'Content-Type: application/json' -d "{\"timestamp\":\"$timestamp\",\"system_name\": \"$system_name\",\"cpu\":\"$cpu\"}"`

# run command 10 times

count=5
for i in $(seq $count); do
   echo ${es}
done

echo " ${timestamp} & ${system_name}"
# End
