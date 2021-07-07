# Сдампим последние 100 строк
mysqldump -ae example --where="TRUE ORDER BY id DESC LIMIT 100" > "db-backup.sql" 
