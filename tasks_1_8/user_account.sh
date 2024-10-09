#!/bin/bash

echo """Choose an option:
        1) Create a user
        2) Delete a user
"""
read -p "Provide an option and a username (exp: 1, 2 bob): " option username

case $option in
    1)
        id $username &>/dev/null
        if [ $? -eq 0 ]; then
            echo "$username already exist"
        else
            useradd $username
            echo "$username user was created"
            echo "Craeted user's information: $(id $username)"
            # Ask user for a password
            read -sp "Enter password for $username: " password
            echo
            # Set the password
            echo "$username:$password" | chpasswd
            echo "Password set for $username"
            echo "Selected Option: 1) Create a user. $username user was created at $(date '+%m-%d-%Y %H:%M')" >> /var/log/user_account.log
            exit
        fi
    ;;
    2)
        id $username &>/dev/null
        if [ $? -eq 0 ]; then
            userdel -r $username
            echo "$username user was deleted"
            echo "Selected Option: 2) Delete a user. $username user was deleted at $(date '+%m-%d-%Y %H:%M')" >> /var/log/user_account.log
        else
            echo "User does not exists"
            exit
        fi
    ;;
    *)
        echo "Invalid option. Please provide valid option"
    ;;
    
esac
