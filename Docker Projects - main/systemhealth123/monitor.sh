#!/bin/bash

echo "CPU Load: $(uptime | awk -F'load average:' '{ print $2 }')"
echo "Memory Usage: $(free -m | awk 'NR==2{ printf "Used: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')"
echo "Disk Usage: $(df -h | awk '$NF=="/"{ printf "%d/%dGB (%s)\n", $3,$2,$5}')"
echo "Active Users: $(who | wc -l)"
echo "Running Processes: $(ps aux --no-heading | wc -l)"

