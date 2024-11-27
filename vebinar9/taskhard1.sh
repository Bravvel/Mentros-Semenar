file=$1
word=$2

if [ -f "$file" ]; then
	cnt=$(grep -o -i "$word" "$file" | wc -l)
	echo "Слово $word встречается $cnt раз в файле $file."
else
	echo "Данный файл не найден."
fi
