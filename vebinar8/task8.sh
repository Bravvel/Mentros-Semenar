disk_usage=$(df -h | awk '$NF=="/"{printf "%s", $5}')

disk_usage="${disk_usage%?}"

disk_usage=$(echo "$disk_usage" | tr -d '[[:alpha:]]')

if (( disk_usage >= 80 )); then
	echo "Внимание! Использование диска превышает 80% ($disk_usage%)."
else 
	echo "Всё хорошо!"
fi

exit 0
