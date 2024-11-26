read -p "Введите название папки: " filepath

if [ ! -d "$filepath" ]; then
	echo "Путь $filepath не является дерикторией"
	exit 1
fi

for file in "$filepath"/*; do
	if [ -f "$file" ]; then
		filename=$(basename "$file")
		mv "$file" "$filepath/backup_$filename"
	fi
done

echo "Файлы переименованы"
