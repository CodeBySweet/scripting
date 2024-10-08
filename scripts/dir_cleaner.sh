#!/bin/bash


echo """Select an option:
        1) Delete all .tmp files
        2) Back up all .tmp files
        3) Exit"""

read -p "Enter your choice: " choice

case $choice in
     1)
       echo "Deleting files"
       for file in *.tmp; do
       rm -r $file
       done
       sleep 2
       echo "File deletion is complete!"
       ;;
     2)
       echo "Backing up files..."
       for file in *.tmp; do
       cp $file ~/backup
       done
       sleep 2
       echo "Backup completed!"
       ;;
     3)
       echo "Exiting the program"
       exit
       ;;
     *) 
       echo "Enter a valid option"
       ;;

    esac