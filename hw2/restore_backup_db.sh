# Формируем новую БД
mysql -e "CREATE DATABASE sample";

# Загружаем в нее дамп и структуру
mysql sample < "db-backup.sql"
