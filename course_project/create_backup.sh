#Формируем бэкап БД
#!/bin/bash

# Переменные скрипта Нужен файл конфигурации бэкапа  .db_backup.cfg
cfg_path_file="$HOME/.db_backup.cfg"
backup_password=$(awk -F "=" '/backup_passwd/ {print $2}' $cfg_path_file)
db_name=$(awk -F "=" '/db_name/ {print $2}' $cfg_path_file)
old_files_more_days=$(awk -F "=" '/old_files_more_days/ {print $2}' $cfg_path_file)
title=$(date +%Y%m%d)
backup_prefix=$(awk -F "=" '/backup_prefix/ {print $2}' $cfg_path_file)

echo "Удаляем старые копии ( > $old_files_more_days дней )."
find "./backups" -mtime +$old_files_more_days -type f -delete

echo "Формируем бэкап БД ..."
pass_phrase=$title$backup_password
# Упакуем и пошифруем в архив
mysqldump $db_name | gzip -9 | openssl enc -aes-256-cbc -salt -iter 100 -pass pass:$pass_phrase  > "./backups/$backup_prefix$db_name$title.sql.gz.enc"

#echo "Дополнительно отправляем бэкап в телеграмм ..." Для этого и шифруем
#Thanks https://github.com/fabianonline/telegram.sh
#./telegram.sh -t БОТ_ТОКЕН_ИД -c ЧАТ_ИД -f "/home/dobrii/less6/backups/db-$2-backup-$title.sql.gz.enc" "Бэкап БД от title"



