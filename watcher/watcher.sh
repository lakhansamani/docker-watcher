#!/bin/sh
echo "watcher service"
count=0
while true
do
    sleep 5s
    echo "list"
    echo $count >> /env/.env
    count=`expr $count + 1`
done
