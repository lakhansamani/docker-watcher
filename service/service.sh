#!/bin/sh
echo "running service"
touch /env/.env && chmod 777 /env/.env
# if grep -q "3" "/env/.env";
# then
#     while true
#     do
#         sleep 8s
#         date
#     done
# else
#     echo "3 not found :("
#     exit 1
# fi
counter=1
while true
do
    sleep 5s
    echo $counter
    counter=`expr $counter + 1`
done
