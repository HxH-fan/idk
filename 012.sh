#!/bin/bash

# Создаем директорию "attachments", если она еще не существует
mkdir -p attachments

# Переходим в директорию "attachments"
cd attachments

# Цикл для загрузки 20 фотографий
for i in {1..20}
do
    # Генерируем случайное имя файла для каждой фотографии
    filename="photo$i.jpg"
    
    # Используем curl для загрузки изображения и сохраняем его в файл
    curl -sSL https://picsum.photos/800/400 --output "$filename"
    
    # Выводим сообщение о завершении загрузки текущей фотографии
    echo "Загружено изображение $i: $filename"
done

echo "Загрузка изображений завершена!"
