#!/bin/bash

# This contains different logs extracted from AUTHORIZED USERS, FAILED LOGIN, AND WHO IS CURRENTLY LOGGED IN.
# Create a file to capture log files called report-logs.txt
# View all log files with sudo ls -la /var/log

echo Report from log files > report-logs.txt

echo ===== Start Date and Time ===== >> report-logs.txt
date >> report-logs.txt

echo ===== Last Authorized Users ===== >> report-logs.txt
last -f /var/log/auth.log >> report-logs.txt

echo ===== Last Failed Login Attempts ===== >> report-logs.txt
sudo last -f /var/log/btmp >> report-logs.txt

echo ===== Who is logged in ===== >> report-logs.txt
sudo last -w /var/log/wtmp >> report-logs.txt

exit
