read -p "Введите путь к дериктории: " dirpath

if [ -d "$dirpath" ]; then
        current_date=$(date +%Y-%m-%d)
        archive_name=$(basename "$dirpath")_$current_date.tar.gz
        tar -czvf "$archive_name" "$dirpath"
        echo "Архив '$archive_name' успешно создан."
else
        echo "Директория не найдена"
fi

