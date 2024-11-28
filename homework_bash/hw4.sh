say_hello() {
	name_local=$1
	echo "Hello, "$name
}

sum() {
	n1_local=$1
	n2_local=$2
	sum=0
	let "sum = n1_local + $n2_local"
	echo "$n1_local + $n2_local = $sum"
}

read -p "Enter your name: " name
say_hello $name

read -p "Enter first number: " n1
read -p "Enter second number: " n2
sum $n1 $n2
