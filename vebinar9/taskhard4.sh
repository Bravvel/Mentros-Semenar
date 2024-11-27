server=$1
ping_cnt=5

ping -c $ping_cnt $server > /dev/null 2>&1

if [ $? -eq 0 ]; then 
	echo "server available"
else 
	echo "server unavailable"
fi

