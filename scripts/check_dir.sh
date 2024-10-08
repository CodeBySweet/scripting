#!/bin/bash

dir="$1"

result=$(find / -type d -name "$dir")

check_dir=$?



if [ -z $result ]; then
	echo "$dir directory not found"
else    
	echo "$dir directory found"
fi

echo "Exit status of the last command is: $?"
