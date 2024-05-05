#!/bin/bash

echo "Report.txt generation started"

mkdir -p reports   # Create the reports directory if it doesn't exist

chmod +w reports

echo Incident Investigator Report > reports/report.txt

echo ===== Start Date and Time ===== >> reports/report.txt
date >> reports/report.txt

echo ===== System Information ===== >> reports/report.txt
uname -a >> reports/report.txt

echo ===== Network Interface ===== >> reports/report.txt
ifconfig -a >> reports/report.txt

echo ===== Network Statistics ===== >> reports/report.txt
netstat -ano >> reports/report.txt

echo ===== Processes Information ===== >> reports/report.txt
ps -axu >> reports/report.txt

echo ===== Routing Table ===== >> reports/report.txt
route -n >> reports/report.txt

echo ===== End Date and Time ===== >> reports/report.txt
date >> reports/report.txt

echo "Report.txt generation completed"
