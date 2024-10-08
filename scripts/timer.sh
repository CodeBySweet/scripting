#!/bin/bash

read -p "Enter a number to start countdown: " number

while [ $number -gt 0 ]; do
      echo "$number"
      number=$((number - 1))
      sleep 1
done
      
      echo "Timer is up!"