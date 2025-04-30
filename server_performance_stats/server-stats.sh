#!/bin/bash

echo "OS version & name: "
grep -E '^(VERSION|NAME)=' /etc/os-release

echo "Total CPU usage:"
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'

echo "Total memory usage (Free vs Used including percentage):"
free | grep Mem | awk '{print $3/$2 * 100.0 "%"}'

echo "Total disk usage (Free vs Used including percentage):"
df -h / | awk 'NR==2 {print "Used=" $3 ", Free=" $4 ", Total=" $2 ", Usage=" $5}'

echo "Top 5 processes by CPU usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

echo "Top 5 processes by memory usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6

echo "Uptime: "
uptime

echo "Load average: "
cat /proc/loadavg | awk '{print $1, $2, $3}'

echo "Logged-in users: "
cat /etc/passwd | grep "/home" | cut -d: -f1

echo "Failed login attempts: "
sudo lastb

