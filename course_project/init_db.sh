#!/bin/bash

# Имя будущей БД
db_name="ld"
cfg_path_file="$HOME/.db_backup.cfg"

# Генерация пароля для бэкапа БД
backup_db_password=$(echo $((1 + RANDOM % 1000))$(date +%Y-%m-%d-%H-%M-%S) | sha256sum | awk '{ print substr($1,0) }')

echo "Пароль для бэкапа: $backup_db_password"

# Пишем данные конфигурационный файл
echo " " > $cfg_path_file
# Пароль для файлов бэкапов
echo "backup_passwd=$backup_db_password" >> $cfg_path_file
# Количество дней старых бэкапов
echo "old_files_more_days=30" >> $cfg_path_file
# Навзание БД 
echo "db_name=$db_name" >> $cfg_path_file
# Префикс файла бэкапа
echo "backup_prefix=db-backup-" >> $cfg_path_file
echo "Конфигурацию бэкапа можно изменить в " + $cfg_path_file

#TODO: Вывести установочные логи в нужный файлик
# Создадим новую БД
echo "Удаляем БД ..."
mysql -e "DROP DATABASE IF EXISTS $db_name;"

echo "Создаем новую БД ..."
mysql -e "CREATE DATABASE $db_name;"

# Инициализируем и формируем структуру БД
echo "Формируем структуру БД ..."
mysql --database=$db_name < "structure.sql"
mysql --database=$db_name < "functions.sql"
mysql --database=$db_name < "triggers.sql"

