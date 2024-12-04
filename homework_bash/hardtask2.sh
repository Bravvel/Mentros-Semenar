cpu_load=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\) id.*/\1/" | awk '{print 100 - $1}')
mem_total=$(free -m | awk 'NR==2{print $2}')
mem_used=$(free -m | awk 'NR==2{print $3}')
mem_percentage=$((mem_used * 100 / mem_total))
disk_usage=$(df / | awk 'NR==2{print $5}')
echo "CPU load: $cpu_load%"
echo "Memory usage: $mem_percentage%"
echo "Disk usage: $disk_usage"
if [ "$mem_percentage" -gt 80 ]; then
	echo "Warning: Memory usage exceeds 80%!"
	echo "Processes consuming the most resources: "
	ps aux --sort=-%mem | head -n 11 | awk '{print $1,$2,$3,$4,$11}' | column -t -s  " "
fi 
