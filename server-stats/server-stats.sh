#!/bin/bash

echo "###############################################"
echo "# System uptime Info #"
echo "###############################################"

uptime

echo
echo "###############################################"
echo "# Total CPU Usage #"
echo "###############################################"
top -bn1 | grep "%Cpu(s)" | awk '{print "Usage: " 100 - $8 "%"}'

echo
echo "###############################################"
echo "# Memory Usage #"
echo "###############################################"
free | grep "Mem:" | awk '{ 
  total=$2/1024/1024; 
  used=$3/1024/1024; 
  free=$4/1024/1024;
  printf "Total: %.1f GiB\nUsed: %.1f GiB (%.2f%%)\nFree: %.1f GiB (%.2f%%)\n", 
    total, used, (used/total)*100, free, (free/total)*100
}'

echo
echo "###############################################"
echo "# Top 5 Processes by Memory Usage #"
echo "###############################################"
ps aux --sort=-%mem | awk 'NR==1 || NR<=6 {print $1 "\t" $2 "\t" $4 "\t" $11}'

echo
echo "###############################################"
echo "# Top 5 Processes by CPU Usage #"
echo "###############################################"
ps aux --sort=-%cpu | awk 'NR==1 || NR<=6 {print $1 "\t" $2 "\t" $3 "\t" $11}'
