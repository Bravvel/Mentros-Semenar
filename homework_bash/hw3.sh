read -p "Enter integer number: " num
cnt=1
if [ "$num" -gt 0 ]; then
	echo "$num is positive"
	while [ "$cnt" -le "$num" ]
	do
		echo "$cnt"
		let "cnt+=1"
	done
	elif [ "$num" -eq 0 ]; then
		echo "$num is zero"
	else 
		echo "$num is negative"
fi

