#!/bin/bash

timestamp=$(date +%m-%d-%Y-%M)

read -p "Provide the path for backup: " path
# Check if the path to the directory/file is correct
check_path=$(ls $path)
if [ $? -eq 0 ]; then
echo "The path is correct"
else
echo "Please enter a correct path"
fi


# Function to create a backup files
function backup {
    cp -r $path /var/log/backup
    if [ $? -eq 0 ]; then
        echo "The backup was completed successfully!"
    else
        echo "The backup process failed!"
        exit 1
    fi
}


# Function to compress the backuped up files
function compress {
    cd /var/log/backup && tar -cf archive_files_$timestamp.tar $path
    if [ $? -eq 0 ]; then
        echo "The compression process was completed successfully!"
    else 
        echo "The compression process failed!"
        exit 1
    fi
}


# Function to send an email
function email {
    read -p "Provide an email address: " email
    echo "This is a notice email. The backup of the files in $path was completed successfully!" | mail -s "File Backup" $email
    if [ $? -eq 0 ]; then
        echo "The email was sent successfully!"
    else 
        echo "The email was not sent!"
        exit 1
    fi
}

backup
compress
email