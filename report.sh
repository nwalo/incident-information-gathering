#!/bin/bash

echo start report

echo Incident Investigator Report > report.txt

echo ===== Start Date and Time ===== >> report.txt
date >> report.txt

echo ===== System Information ===== >> report.txt
uname -a >> report.txt

echo ===== Network Interface ===== >> report.txt
ifconfig -a >> report.txt

echo ===== Network Statistics ===== >> report.txt
netstat -ano >> report.txt

echo ===== Processes Information ===== >> report.txt
ps -axu >> report.txt

echo ===== Routing Table ===== >> report.txt
route -n >> report.txt

echo ===== End Date and Time ===== >> report.txt
date >> report.txt

echo you have successfully generated an incident report. 
echo To access the file, open the report.txt
