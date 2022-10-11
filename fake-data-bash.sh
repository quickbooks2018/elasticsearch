#!/bin/bash
# https://stackoverflow.com/questions/72059973/how-do-i-use-shell-variables-in-sh-file-for-a-elasticsearch-curl-post
# https://stackoverflow.com/questions/1194882/how-to-generate-random-number-in-bash

timestamp=`date +"%Y-%m-%d %T"`
system_name=`hostname`
cpu=`echo $((1 + $RANDOM % 100))`

user='user'
password='password'
end_point='https://search-cloudgeeks-ljvohdmawijjubwxwq6zbj7jja.us-east-1.es.amazonaws.com'
port='443'

es=`curl -u "${user}":"${password}" -XPOST "${end_point}:${port}/backup_timestamps/_doc" -H 'Content-Type: application/json' -d "{\"timestamp\":\"$timestamp\",\"system_name\": \"$system_name\",\"cpu\":\"$cpu\"}"`

# run command 10 times

count=10
for i in $(seq $count); do
   echo ${es}
done

echo " ${timestamp} & ${system_name}"
# End
