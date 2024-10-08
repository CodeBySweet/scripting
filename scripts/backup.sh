#!/bin/bash

# 1.  Compress log file
# 2. Save it with timestamp
# 3. Save it under /var/backups/
# 4. Clear the log file
# 5. Restart apache

log_file="/var/log/httpd/access_log"
timestamp=$(date +%m-%d-%Y)

cd /var/log/httpd && tar -cf /var/log/backup/apache-access-log-$timestamp.tar $log_file
echo "" > $log_file

systemctl restart httpd
