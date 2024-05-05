#!/bin/bash

# Gather system information after an incident

echo ################################################

echo Incident Information Gathering Tool

echo ------------------------------------------------

# Collection of volatile information from system (e.g. from RAM)

echo "Kindly provide your password:"
read -s PASSWORD   # The '-s' option hides user input

# Run report.sh with sudo
echo "$PASSWORD" | sudo -S ./report.sh

# Run report-logs.sh with sudo
sudo -S ./report-logs.sh <<< "$PASSWORD"


exit


