#!/bin/bash

read -p "Enter a process name (e.g., nginx, mysql): " p_name

# Function to check if the process is running, if not to restart it
function check_process {
    pgrep $p_name &> /dev/null
    if [ $? -eq 0 ]; then
        echo "The $p_name process is up and running"
        exit
    else
        echo "The $p_name process is not running, restarting the process"
        systemctl restart $p_name
        echo "$p_name status: $(systemctl status $p_name | grep "Active")"
    fi
}

check_process