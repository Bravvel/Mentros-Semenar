read -p "Введите имя файла: " path
if [ -e $path ]; then
	echo "Файл найден!"
else 
	echo "Файл не найден!"
fi
