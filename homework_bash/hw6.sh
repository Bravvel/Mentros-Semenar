if [ ! -f "input.txt" ]; then
	echo "Error: file input.txt not found."
	exit 1
fi

wc -l < input.txt >  output.txt
ls not_exist_file.txt 2> error.log

