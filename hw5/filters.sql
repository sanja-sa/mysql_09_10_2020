-- --------------------------------------------------------------------------------------
-- Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»
-- --------------------------------------------------------------------------------------


-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
-- Заполните их текущими датой и временем.

-- Удалим таблицу если существует
DROP TABLE IF EXISTS users;  

-- Создадим новую таблицу пользователей
CREATE TABLE users ( 
	id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
	name VARCHAR(20) NOT NULL COMMENT "Имя пользователя",
	birthday_at DATE COMMENT "День рождения пользователя",
	created_at VARCHAR(30) COMMENT "Время создания строки",
	updated_at VARCHAR(30) COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Пользователи";

-- Добавим свойства для ключа
ALTER TABLE users
	ADD PRIMARY KEY (id),
	MODIFY id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- Добавим несколько записей в таблицу пользователей
INSERT INTO users (name, birthday_at) VALUES('John', '2012-10-23');
INSERT INTO users (name, birthday_at) VALUES('Dave', '2001-08-10');
INSERT INTO users (name, birthday_at) VALUES('Dora', '1977-02-08');

-- Заполним данными created_at и updated_at
UPDATE 
	users 
SET 
	created_at=DATE_FORMAT(NOW(), '%d-%m-%Y %h:%i'), 
	updated_at=DATE_FORMAT(NOW(), '%d-%m-%Y %h:%i');


-- 2. Таблица users была неудачно спроектирована. 
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

-- Обновим дату на корректное значение 
UPDATE 
	users 
SET 
	created_at=STR_TO_DATE(created_at, '%d-%m-%Y %h:%i'), 
	updated_at=STR_TO_DATE(updated_at, '%d-%m-%Y %h:%i');

-- Откорректируем тип колонок на правильное
ALTER TABLE users
	CHANGE created_at created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	CHANGE updated_at updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки";
	

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
-- если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако нулевые запасы должны выводиться в конце, после всех записей.

-- Создадим подопытную таблицу
 CREATE TABLE storehouses_products ( 
	id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
	value INT COMMENT "Количество товаров на сайте",
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Складские запасы";

-- Добавим свойства для ключа
ALTER TABLE storehouses_products
	ADD PRIMARY KEY (id),
	MODIFY id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- Добавим несколько записей в таблицу складских запасов
INSERT INTO storehouses_products (value) VALUES('0');
INSERT INTO storehouses_products (value) VALUES('2500');
INSERT INTO storehouses_products (value) VALUES('0');
INSERT INTO storehouses_products (value) VALUES('30');
INSERT INTO storehouses_products (value) VALUES('500');
INSERT INTO storehouses_products (value) VALUES('1');

-- Сделаем выборку
SELECT 
	* 
FROM 
	storehouses_products
ORDER BY
	IF(value>0, FALSE, TRUE),
	value;
	

-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий (may, august)

-- Добавим еще пару записей в выборки
INSERT INTO users (name, birthday_at) VALUES('Gregory', '2000-05-12');
INSERT INTO users (name, birthday_at) VALUES('Dread', '2001-01-15');
INSERT INTO users (name, birthday_at) VALUES('Justify', '1977-09-14');

-- Сформируем выборку по месяцам
SELECT
	*
FROM
	users
WHERE 
	MONTHNAME(birthday_at) IN('may', 'august');


-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- Отсортируйте записи в порядке, заданном в списке IN.

-- Подготовим таблицу
 CREATE TABLE catalogs ( 
	id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Каталог";

-- Добавим свойства для ключа
ALTER TABLE catalogs
	ADD PRIMARY KEY (id),
	MODIFY id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- Добавим несколько записей в таблицу складских запасов
INSERT INTO catalogs VALUES();
INSERT INTO catalogs VALUES();
INSERT INTO catalogs VALUES();
INSERT INTO catalogs VALUES();
INSERT INTO catalogs VALUES();
INSERT INTO catalogs VALUES();

-- Отсортируем в нужном порядке
SELECT 
	* 
FROM 
	catalogs 
WHERE 
	id IN (5, 1, 2)
ORDER BY
	FIELD(id, 5, 1, 2);

-- --------------------------------------------------------------------------------------
-- Практическое задание теме «Агрегация данных»
-- --------------------------------------------------------------------------------------


-- 1. Подсчитайте средний возраст пользователей в таблице users.
SELECT
	ROUND(AVG(YEAR(NOW()) - YEAR(birthday_at))) as age
FROM
	users;

SELECT
	ROUND(AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW()))) as age
FROM
	users;


-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.

-- Если дни недели выбирать в том году, в который родился
SELECT
	DAYNAME(birthday_at) as days,
	COUNT(*) as count_days
FROM
	users
GROUP BY
	days;

-- В текущем году
SELECT
	DAYNAME(ADDDATE(birthday_at, INTERVAL YEAR(NOW()) - YEAR(birthday_at) YEAR)) as days,
	COUNT(*) as count_days
FROM
	users
GROUP BY
	days;

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.

-- Возьмем за основу таблицу пользователей и будем использовать id в качестве перемножения значений
SELECT
	EXP(SUM(LN(id)))
FROM
	users
WHERE 
	id < 6;
-- Бага, если я поставлю LIMIT 5 ( только пять значений ) расчет все равно идет по всем строкам 














 