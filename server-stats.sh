echo "Total CPU usage"
sudo apt install sysstat
mpstat -P ALL
echo
echo "Memory usage:"
free -h
echo
echo "Disk Usage"
df -h
echo
echo "Top 5 processes by CPU usage"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo
echo "Top 5 processes by memory usage"
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6