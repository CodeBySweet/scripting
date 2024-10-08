#!/bin/bash

# for item in list; do
#       # commands
# done

# for file in *.sh; do

#     echo $file
#     sleep 2

# done

users="$(cat /etc/passwd | awk -F ":" '{print $1}')"

for user in $users; do
   mkdir /var/games/$user
   ls -l /var/games/
   sleep 2
   clear
done
