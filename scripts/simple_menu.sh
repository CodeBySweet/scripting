#!/bin/bash

echo """Select an option:
        1) Show date
        2) List files
        3) Show user
        4) Exit"""

read -p "Select an option: " choice

case $choice in
    1)
      date
     ;;
     2)
      ls
     ;;
     3)
      whoami
     ;;
     4)
      echo "Exiting the program"
          exit
     ;;
     *)
     echo "PLease enter a valid option (1, 2 ..)"
     ;;

esac
