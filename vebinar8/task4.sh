read -p "Введите имя файла: " filename

if [ -f "$filename" ]; then
	cnt=$(wc -l < "$filename")
	echo "Всего $cnt строк"
else 
	echo "$filename не найден"
fi
