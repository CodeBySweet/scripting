#!/bin/bash

function ufw_setup {
    rpm -q firewalld &> /dev/null
    if [ $? -ne 0 ]; then
    echo "Firewalld is not installed. Installing..."
        dnf install firewalld -y
        if [ $? -eq 0 ]; then
            systemctl start firewalld
            systemctl enable firewalld
            echo "Firewalld is installed and running. $(systemctl status firewalld | grep "Active:")"
        else
            echo "Firewalld installation failed"
            exit 1
        fi
    else
        echo "Firewalld is already installed"
    fi
}

function add_rules {
    if ! firewall-cmd --list-services | grep -qw "http"; then
        firewall-cmd --permanent --add-service=http
        echo "Added HTTP service"
    else
        echo "HTTP service is already added"
    fi
    
    if ! firewall-cmd --list-services | grep -qw "https"; then
        firewall-cmd --permanent --add-service=https
        echo "Added HTTPS service"
    else
        echo "HTTPS service is already added"
    fi
    
    if ! firewall-cmd --list-ports | grep -qw "80/tcp"; then
        firewall-cmd --permanent --add-port=80/tcp
        echo "Added port 80/TCP."
    else
        echo "Port 80/TCP is already added"
    fi

    if ! firewall-cmd --list-ports | grep -qw "443/tcp"; then
        firewall-cmd --permanent --add-port=443/tcp
        echo "Added port 443/TCP"
    else
        echo "Port 443/TCP is already added"
    fi
    
    firewall-cmd --reload
}

function enable_disable_port {
    echo """Select an option:
            1) Enable a port
            2) Disable a port
    """
    read -p "Provide an option and port number (e.g., 80/tcp or 443/tcp): " option port
    
    case $option in
        1)
            if ! firewall-cmd --list-ports | grep -qw "$port"; then
                firewall-cmd --permanent --add-port=$port
                firewall-cmd --reload
                echo "Added port $port"
            else
                echo "Port $port is already added"
            fi
        ;;
        2)
            if firewall-cmd --list-ports | grep -qw "$port"; then
                firewall-cmd --permanent --remove-port=$port
                firewall-cmd --reload
                echo "Removed port $port"
            else
                echo "Port $port is already removed"
            fi
        ;;
        *)
            echo "Invalid option. Please select 1 to enable a port or 2 to disable a port"
        ;;
        
    esac
    
}

ufw_setup
add_rules
enable_disable_port