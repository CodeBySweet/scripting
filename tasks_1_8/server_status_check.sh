#!/bin/bash

read -p "Provide UR: " url

# Check if status code is 200, if not restart the server
function status_code {
    s_code=$(curl -s --head $url | grep "HTTP/" | awk '{print $2}')
    if [ $s_code -eq 200 ]; then
        echo "Status code of $url is $s_code, no action needed"
    else
        echo "Status code of $url is $s_code, restarting the service"
        systemctl restart httpd
    fi
}

function multiple_url {
    read -p "Provide URLs (separated by space): " urls
    for url in $urls; do
        s_code=$(curl -s --head $urls | grep -m 1 "HTTP/" | awk '{print $2}')
        if [ $s_code -eq 200 ]; then
            echo "Status code of $url is $s_code, no action needed"
        else
            echo "Status code of $url is $s_code, restarting the service"
            systemctl restart httpd
        fi
    done
    
}

status_code
multiple_url