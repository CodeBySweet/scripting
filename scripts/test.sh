#!/bin/bash

name=$1
age=$2
city=$3

if [ $age -gt 18 ]; then
        eligible="Yes"
else
        eligible="No"
fi

echo "$name, from $cite is eligible to vote: $eligible"


