# Создем БД
mysql -e "CREATE DATABASE example character set UTF8 collate utf8_bin";

# Формируем структуры БД
mysql --database="example" < "create_db.sql"

# Добавим данные 1000 строк ( например )
for numberUser in {1..1000} 
do 
mysql --database="example" -e "INSERT INTO users (name) VALUES ('Пользователь_$numberUser')"
done
