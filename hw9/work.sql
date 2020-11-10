-- --------------------------------------------------------------------------------------
-- Практическое задание по теме “Транзакции, переменные, представления”
-- --------------------------------------------------------------------------------------

-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
START TRANSACTION; 

  INSERT INTO 
    sample.users
    SELECT 
      *
      FROM hw.users 
      WHERE 
        users.id = 1;
       
  DELETE FROM 
    hw.users
    WHERE
     users.id = 1;
    
COMMIT;
 
-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.
CREATE OR REPLACE VIEW 
  vw (prod, cat) AS 
    SELECT 
      p.name,
      c.name
      FROM
        products p
        JOIN catalogs c 
          ON c.id = catalog_id;
-- Проверка
SELECT
  *
  FROM vw;

-- 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, 
-- если дата присутствует в исходном таблице и 0, если она отсутствует.
WITH RECURSIVE cts_dates as 
(
	SELECT '2020-11-01' as curr_date
	UNION ALL
	SELECT DATE_ADD(curr_date, INTERVAL 1 DAY) as curr_date FROM cts_dates WHERE curr_date < LAST_DAY('2020-11-01')
)
SELECT 
  DISTINCT curr_date,
  IF(o.id IS NULL,0,1) as present
  FROM cts_dates
    LEFT JOIN orders o
      ON DATE_FORMAT(o.created_at,'%Y-%m-%d') = curr_date;

-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
DELETE orders
  FROM orders
    JOIN
      (SELECT o.created_at
         FROM orders o
         ORDER BY o.created_at DESC
         LIMIT 5, 1) as start_del_order
      ON orders.created_at <= start_del_order.created_at;
     
-- --------------------------------------------------------------------------------------
-- Практическое задание по теме “Транзакции, переменные, представления”
-- --------------------------------------------------------------------------------------

-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
-- Удалим функцию
DROP FUNCTION IF EXISTS hello;
-- Создадим функцию
CREATE FUNCTION hello()
RETURNS VARCHAR(12) NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN RETURN "Доброй ночи";
    WHEN hour BETWEEN 6 AND 11 THEN RETURN "Доброе утро";
    WHEN hour BETWEEN 12 AND 17 THEN RETURN "Добрый день";
    ELSE RETURN "Добрый вечер";
  END CASE;
END

SELECT hello();

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.
-- Удаляем триггер
DROP TRIGGER IF EXISTS check_insert_name_desc;
-- Создаем триггер на вставку продуктов
CREATE TRIGGER check_insert_name_desc
  BEFORE INSERT ON products
  FOR EACH ROW
  BEGIN
    IF NEW.name IS NULL AND NEW.description IS NULL THEN
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Name and description are NULL';
    END IF;
  END

-- Удаляем триггер
DROP TRIGGER IF EXISTS check_update_name_desc;
-- Создаем триггер на обновление продуктов
CREATE TRIGGER check_update_name_desc 
  BEFORE UPDATE ON products
  FOR EACH ROW 
  BEGIN
    IF NEW.name IS NULL AND NEW.description IS NULL THEN
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Name and description are NULL';
    END IF;
  END

-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.
DROP FUNCTION IF EXISTS FIBONACCI;
CREATE FUNCTION FIBONACCI(num INT)
	RETURNS INT DETERMINISTIC
    BEGIN
	   DECLARE sq5h DOUBLE;
	   SET sq5h = SQRT(5);
   	   RETURN POW((sq5h + 1) * 0.5, num) / sq5h;
    END
    
SELECT FIBONACCI(0);
SELECT FIBONACCI(2);
SELECT FIBONACCI(10);
SELECT FIBONACCI(12);
