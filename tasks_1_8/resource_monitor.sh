#!/bin/bash

echo -e "LOGGING SYSTEM RESOURCE MONITORING INFORMATION. DATE: $(date '+%m-%d-%Y %H:%M')\n" >> /var/log/resource_monitor.log 

# Logs CPU usage
function cpu_usage {
    echo "CPU Usage:" >> /var/log/resource_monitor.log 
    mpstat >> /var/log/resource_monitor.log
    echo -e "\n" >> /var/log/resource_monitor.log 
}

# Logs Memory usage
function memory_usage {
    echo "Memory Usage:" >> /var/log/resource_monitor.log 
    vmstat >> /var/log/resource_monitor.log
    echo -e "\n" >> /var/log/resource_monitor.log 
}

# Logs Disk usage
function disk_usage {
    echo "Disk Usage:" >> /var/log/resource_monitor.log 
    df -h >> /var/log/resource_monitor.log
    echo -e "\n" >> /var/log/resource_monitor.log 
}

# Call the functions
cpu_usage
memory_usage
disk_usage


