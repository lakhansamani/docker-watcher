#!/bin/sh
echo "starting service"
touch /env/.env && chmod 777 /env/.env
while true
do
    sleep 5s
    cat /env/.env
    date
done
