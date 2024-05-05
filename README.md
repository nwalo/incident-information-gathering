# Automate Incident Information Gathering Process

"Automate Incident Information Gathering Process" is a Bash script designed to streamline post-incident data collection tasks.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Acknowledgments](#acknowledgments)

## Introduction

Welcome to the culmination of efficiency and innovation: a Bash script, 'Automate Incident Information Gathering Process.' This cutting-edge tool serves as the digital orchestrator in the realm of post-incident data collection. Designed with meticulous precision, it helps to expedite the process in capturing crucial information. With its seamless integration, it boosters the process of incident analysis as it collects evidence after an incident.

## Features

The key features for this project comes with 3 executable files "incident , report.sh, and report-logs.sh

- **Incident Information Gathering (incident-information-gathering.sh)**
 - The main executable that initializes the data collection process
 - Collection of volatile information.
 
- **Script to generate report (report.sh)**
 - System Information
 - Network Interface 
 - Network Statistics
 - Processes Information
 - Routing Table

- **Script to generate report for log files (report-log.sh)**
 - Last Authorized Users
 - Last Failed Login Attempts
 - Who is logged in

## Installation

You can clone the repository or **[download](https://github.com/nwalo/incident-information-gathering/archive/refs/heads/main.zip)** the repo.
Then run the script incident-information-gathering.sh with "./incident-information-gathering.sh" or "bash incident-information-gathering.sh"
Check the output (.txt) files in report directory generated.


## Usage
e.g.
```bash
git clone git@github.com:nwalo/incident-information-gathering.git <<This is if you are using ssh>> or git clone https://github.com/nwalo/incident-information-gathering.git
cd incident-information-gathering
./incident-information-gathering.sh or bash incident-information-gathering.sh
```

## Miscellaneous

view logs with sudo ls -la var/log
auth log to know who has authorization 
btmp logs failed login attempts
wtmp logs who is curently logged into the system.
cat var/log/auth.log|less all authentication on system.

## Acknowledgments
Special thanks to **[Cisco](https://www.cisco.com/)**, **freecode camp** and **[Tenece](https://www.tenece.com/)**  for their support and inspiration.


