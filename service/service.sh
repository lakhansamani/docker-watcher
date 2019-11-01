#!/bin/sh
echo "starting service"
touch /env/.env && chmod 777 /env/.env
if grep -q "0" "/env/.env";
then
    echo "0 found"
    while true
    do
        sleep 10s
        cat /env/.env
        date
    done
else
    echo "0 not found :("
    exit 1
fi
