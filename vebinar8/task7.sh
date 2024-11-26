add () {
	a=$1
	b=$2
	sum=$((a + b))
	echo "$a + $b = $sum"
}

add "$1" "$2"
add 1 54
add 364 4343
