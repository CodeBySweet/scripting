#!/bin/bash

find=$(find ~ -name "report.txt")
file="/root/report.txt"

if [[ $find == $file ]]; then
echo "$file does exist"
else
touch /root/report.txt
echo "Report created"
fi
