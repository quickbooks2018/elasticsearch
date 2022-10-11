#!/bin/bash

timestamp=`date +"%Y-%m-%d %T"`
system_name="hostname"

es=`curl -u 'USERNAME':'PASSWORD' -XPOST "https://search-cloudgeeks-y42nrqpnslyr6vgwweqpnwj7ai.us-east-1.es.amazonaws.com/backup_timestamps/_doc" -H 'Content-Type: application/json' -d '
{
    "timestamp": "$timestamp",
    "system_name": "$system_name"
}'`

# run command 10 times

count=10
for i in $(seq $count); do
   echo ${es}
done

echo  "${timestamp} , ${system_name}"

# End
