target_file=$1

echo "All files and derictories"
for i in *; do
	if [ -f "$i" ]; then
		echo "$i - File"
	elif [ -d "$i" ]; then
		echo "$i - Directory"
	else
		echo "$i - Another type of data"
	fi 
done

if [ -e "$target_file" ]; then
	echo "File $target_file exist"
else 
	echo "File $target_file does not exist"
fi

echo "Info about files"

for i in *; do
	if [ -e "$i" ]; then
		ans=$(ls -l "$i" | awk '{print $1}')
		echo "File $i have such permissions: $ans"
	fi
done
