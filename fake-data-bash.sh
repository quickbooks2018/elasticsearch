#!/bin/bash
# https://stackoverflow.com/questions/72059973/how-do-i-use-shell-variables-in-sh-file-for-a-elasticsearch-curl-post

timestamp=`date +"%Y-%m-%d %T"`
system_name=`hostname`


es=`curl -u 'USERNAME':'PASSWORD' -XPOST "https://search-cloudgeeks-y42nrqpnslyr6vgwweqpnwj7ai.us-east-1.es.amazonaws.com:443/qasim_timestamps/_doc" -H 'Content-Type: application/json' -d "{\"timestamp\":\"$timestamp\",\"system_name\": \"$system_name\"}"`

# run command 10 times

count=5
for i in $(seq $count); do
   echo ${es}
done

echo " ${timestamp} & ${system_name}"
# End
