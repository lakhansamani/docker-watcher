#!/bin/sh
echo "watcher service"

sleep 5s
### Set initial time of file
LTIME=`stat -c %Z /env/.env`

while true    
do
   ATIME=`stat -c %Z /env/.env`

   if [[ "$ATIME" != "$LTIME" ]]
   then
       docker restart docker-watcher_service_1
       LTIME=$ATIME
   fi
   sleep 5
done
