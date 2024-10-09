#!/bin/bash

read -p "Please provide the source directory and the destination directory: " source destination

function dir_sync {
    # Check if directories provided exist
    if [ -d "$source" ] && [ -d "$destination" ]; then
        echo "The files from $source were successfully copied to $destination on $(date '+%m-%d-%Y %H:%M')" >> /var/log/dir_sync.log
        rsync -av --stats $source $destination | grep "Number of files" >> /var/log/dir_sync.log
        echo "The files from $source were successfully copied to $destination"
    else
        echo "No such directory exists. Please provide an existing directory."
    fi
}

dir_sync