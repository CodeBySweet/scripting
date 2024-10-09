#!/bin/bash

timestamp=$(date +%m-%d-%Y-%H)

read -p "Provide the path for a directory: " path

# Check if the path to the directory/file is correct
if [ -d $path ]; then
    echo "The path is correct"
else
    echo "Please enter a valid directory path"
fi

archive_name="archived_file_${timestamp}.tar"

# Function to compress the files
function compress {
    tar -cf $path/$archive_name -C $path .
    if [ $? -eq 0 ]; then
        echo "The compression process was completed successfully!"
    else
        echo "The compression process failed!"
        exit 1
    fi
}

# Function to create backup files
function backup {
    cp -r $path/$archive_name /var/log/backup
    if [ $? -eq 0 ]; then
        echo "The backup was completed successfully!"
    else
        echo "The backup process failed!"
        exit 1
    fi
}

# Function to check for available disk space
function available_spcae {
    space=$(df -h /var/log/backup | awk 'NR==2 {print $4}' | sed 's/G//')
    if [ $space -lt 1 ]; then
        echo """ALERT! Low Disk Space on /var/log/backup
                Recommended actions:
                - Delete old or unnecessary files
                - Increase disk space allocation"""
    else
        echo "Disk space is sufficient on /var/log/backup. Available space: $space"
    fi
}

# Function to free disk space
function delete_old_backups {
    space=$(df -h /var/log/backup | awk 'NR==2 {print $4}' | sed 's/G//')
    if [ $space -lt 1 ]; then
        ls -lt /var/log/backup | tail -n 2 | awk '{print $9}' | xargs rm -f
        echo "The last 2 files were deleted from /var/log/backup "
    else
        echo "No files were deleted because there are fewer than 2 files in /var/log/backup"
    fi
}

compress
backup
available_spcae
delete_old_backups