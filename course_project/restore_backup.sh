#Формируем бэкап БД
#!/bin/bash

# Переменные скрипта
cfg_path_file="$HOME/.db_backup.cfg"
backup_password=$(awk -F "=" '/backup_passwd/ {print $2}' $cfg_path_file)
db_name=$(awk -F "=" '/db_name/ {print $2}' $cfg_path_file)
backup_prefix=$(awk -F "=" '/backup_prefix/ {print $2}' $cfg_path_file)
enc_file_path="./backups/$backup_prefix$db_name$1.sql.gz.enc"
pass_phrase=$1$backup_password

echo "Восстановить файл из архива за дату: $1"

if [ -e "$enc_file_path" ]
then
if [ -f "$enc_file_path" ]
then

openssl enc -aes-256-cbc -d -in $enc_file_path -iter 100 -pass pass:$pass_phrase | gzip -d | mysql $db_name

else
echo "$1 - Не является файлом"
fi
else
echo "Файл за дату $1 не найден ( Формат даты : '20201223' )"
fi

