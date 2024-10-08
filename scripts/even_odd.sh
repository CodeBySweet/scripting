#!/bin/bash

 read -p "Enter numbers (space separated): " numbers


for number in $numbers; do
  if (( $number % 2 == 0 )); then
      echo "$number is even"
  else 
      echo "$number is odd"
  fi
done


