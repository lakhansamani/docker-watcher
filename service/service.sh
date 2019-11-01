#!/bin/bash
echo "starting service"
while true
do
    sleep 5s
    cat /env/service.env
    date
done
