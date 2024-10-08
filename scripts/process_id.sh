#!/bin/bash

## Get the process  ID of the current script 
processID="$$"

## Get the number of arguments passed to the script
arguments="$#"

echo -e "Process ID: $processID \n Numner of arguments: $arguments" >> process_log.txt
