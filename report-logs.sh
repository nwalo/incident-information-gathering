#!/bin/bash

# This contains different logs extracted from AUTHORIZED USERS, FAILED LOGIN, AND WHO IS CURRENTLY LOGGED IN.
# Create a file to capture log files called report-logs.txt
# View all log files with sudo ls -la /var/log

echo "Report-logs.txt generation started"

mkdir -p reports   # Create the reports directory if it doesn't exist

echo Report from log files > reports/report-logs.txt

echo ===== Start Date and Time ===== >> reports/report-logs.txt
date >> reports/report-logs.txt

echo ===== Last Authorized Users ===== >> reports/report-logs.txt
last -f /var/log/auth.log >> reports/report-logs.txt

echo ===== Last Failed Login Attempts ===== >> reports/report-logs.txt
sudo last -f /var/log/btmp >> reports/report-logs.txt

echo ===== Who is logged in ===== >> reports/report-logs.txt
sudo last -w /var/log/wtmp >> reports/report-logs.txt

echo "Report-logs.txt generation completed"

echo ------------------------------------------------

echo you have successfully generated an incident report. 
echo To access the file, open the reports directory

exit
