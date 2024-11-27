a=$1
b=$2

if [ "$a" -eq "$b" ]; then
	echo "$a = $b"
elif [ "$a" -gt "$b" ]; then
	echo "$a > $b"
else
	echo "$a < $b"
fi

