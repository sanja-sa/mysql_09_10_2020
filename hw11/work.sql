-- --------------------------------------------------------------------------------------
-- Практическое задание тема "Оптимизация запросов"
-- --------------------------------------------------------------------------------------

-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
-- catalogs и products в таблицу logs помещается время и дата создания записи, название
-- таблицы, идентификатор первичного ключа и содержимое поля name.
CREATE TABLE logs (
  id BIGINT UNSIGNED NOT NULL,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  table_name varchar(100) NOT NULL,
  pk_id INT UNSIGNED NOT NULL,
  user_name varchar(255)
) 
ENGINE=Archive
COMMENT "Логи пользователей";

-- Свойства
ALTER TABLE logs
	ADD PRIMARY KEY (id),
	MODIFY id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- При создании записи в products пишеться лог
CREATE TRIGGER products_insert AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "products", NEW.id, NEW.name);
END;

-- При создании записи в catalogs пишеться лог
CREATE TRIGGER catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "catalogs", NEW.id, NEW.name);
END;

-- При создании записи в users пишеться лог
CREATE TRIGGER users_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "users", NEW.id, NEW.name);
END;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
-- Можно через рекурсию попробовать как ниже описал, не самый оптимальный способ, только для примера ( заняло ~6-7 секунд )
-- можно процедуру сделать, либо как на уроке
DROP TABLE customers;
CREATE TABLE customers (
  id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL COMMENT 'Имя покупателя',
  birthday_at DATE NOT NULL COMMENT 'Дата рождения',
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

SET SESSION cte_max_recursion_depth = 10000000;
INSERT INTO customers (name, birthday_at)
WITH RECURSIVE users_cte as 
(
	SELECT 
	  '1930-11-01' as birthday,
	  0 as cnt,
	  'Генадий   ' name
	UNION ALL
	SELECT 
	  DATE_ADD(birthday, INTERVAL 1 DAY) as birthday,
	  cnt + 1 as cnt,
	  CASE cnt%12
	    WHEN 1 THEN 'Генадий'
	    WHEN 2 THEN 'Валера'
	    WHEN 3 THEN 'Виктор'
	    WHEN 4 THEN 'Сергей'
	    WHEN 5 THEN 'Иван'
	    WHEN 6 THEN 'Ольга'
	    WHEN 7 THEN 'Аркадий'
	    WHEN 8 THEN 'Владимир'
	    WHEN 9 THEN 'Екатерина'
	    WHEN 10 THEN 'Александр'
	    WHEN 11 THEN 'Мария'
	    ELSE 'Наташа'
	  END name
	  FROM 
	    users_cte 
	  WHERE 
	    cnt <= 1000000
)
SELECT 
  name,
  birthday birthday_at
  FROM
    users_cte
 
  
    

