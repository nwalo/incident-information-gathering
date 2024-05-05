#!/bin/bash

# Gather system information after an incident

echo ################################################

echo Incident Information Gathering Tool

echo ------------------------------------------------

# Collection of volatile information from system (e.g. from RAM)

echo kindly provide your password 

read PASSWORD

echo $PASSWORD | sudo -S ./report.sh

./report-logs.sh

exit


# view logs with sudo ls -la var/log
# auth log to know who has authorization 
# btmp log logs failed login attempts
# wtmp log to log who is curently logged into the system.
# cat var/log/auth.log(|less) all authentication on system.

