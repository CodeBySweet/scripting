#!/bin/bash

read -p "Enter a file name: " file

search=$(find ~ -type f -name $file)

if [ -z "$search" ]; then
echo "$file file does not exist"
else
echo "$file file exists"
sleep 1
   if [ -w "$search" ]; then
   echo "$file file is readbale"
   sleep 1
   fi
   if [ -r "$search" ]; then
   echo "$file file is writable"
   sleep 1
   fi
   if [ -x "$search" ]; then 
   echo "$file file is executable"
   fi
fi

