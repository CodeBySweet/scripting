#!/bin/bash

echo "Name: $1"
echo "Age: $2"
echo "City: $3"

if [ $# -lt 3 ]; then
	echo "Please provide more information"
fi
