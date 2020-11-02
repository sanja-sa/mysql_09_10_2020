-- --------------------------------------------------------------------------------------
-- Практическое задание к Уроку 7
-- --------------------------------------------------------------------------------------

-- Подготовка связей таблиц
ALTER TABLE orders
	CHANGE user_id user_id BIGINT UNSIGNED; 
	
ALTER TABLE orders
  	ADD CONSTRAINT order_user_id_fk 
  		FOREIGN KEY (user_id) REFERENCES users(id);
  	
ALTER TABLE orders_products
  	CHANGE order_id order_id BIGINT UNSIGNED,
  	ADD CONSTRAINT order_product_order_id_fk 
  		FOREIGN KEY (order_id) REFERENCES orders(id);
  	
ALTER TABLE orders_products
  	CHANGE product_id product_id BIGINT UNSIGNED,
  	ADD CONSTRAINT order_product_product_id_fk 
  		FOREIGN KEY (product_id) REFERENCES products(id);
  	
-- Добавим заказы
INSERT INTO orders (user_id)VALUES
  (FLOOR(1 + RAND() * 6)),
  (FLOOR(1 + RAND() * 6)),
  (FLOOR(1 + RAND() * 6)),
  (FLOOR(1 + RAND() * 6)),
  (FLOOR(1 + RAND() * 6));
 
SELECT * FROM orders;

-- Добавим связку заказов и пользователей
INSERT INTO orders_products (order_id, product_id, total) VALUES
  (FLOOR(1 + RAND() * 5), FLOOR(1 + RAND() * 7), 1),
  (FLOOR(1 + RAND() * 5), FLOOR(1 + RAND() * 7), 1),
  (FLOOR(1 + RAND() * 5), FLOOR(1 + RAND() * 7), 1),
  (FLOOR(1 + RAND() * 5), FLOOR(1 + RAND() * 7), 1),
  (FLOOR(1 + RAND() * 5), FLOOR(1 + RAND() * 7), 1);
 
SELECT * FROM orders_products;

ALTER TABLE products
  	CHANGE catalog_id catalog_id BIGINT UNSIGNED,
  	ADD CONSTRAINT product_catalog_id_fk 
  		FOREIGN KEY (catalog_id) REFERENCES catalogs(id);

-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
SELECT 
	name,
	GROUP_CONCAT(o.id) as order_ids
FROM
	users u
JOIN orders o
	ON o.user_id = u.id
GROUP BY
	name;

SELECT 
	DISTINCT name
FROM
	users u
JOIN orders o
	ON o.user_id = u.id;
	
-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару. ?? Может соответствует заказу?
SELECT 
	p.name product_name,
	c.name catalog_name
FROM
	products p
JOIN catalogs c
	ON p.catalog_id = c.id;
	
-- Выберем все товары по каталогу Процессры
SELECT 
	p.name name
FROM
	products p
JOIN catalogs c
	ON p.catalog_id = c.id
WHERE
	c.name = "Процессоры"

-- Выберем по Геннадию заказы, каталоги, что заказал ( например )
SELECT 
	o.id order_number,
	u.name user_name,
	p.name product,
	c.name catalog
FROM
	orders o
-- Получим его имя
JOIN users u
	ON u.id  = o.user_id and u.name = "Геннадий"
-- Какой товар
JOIN orders_products op 
	ON o.id = op.order_id
-- Наименование товара
JOIN products p 
	ON p.id = op.product_id
-- Каталог товара
JOIN catalogs c 
	ON c.id = p.catalog_id;

	
-- 3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

-- Подготовим таблицы
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ffrom VARCHAR(255),
  fto VARCHAR(255)
);

INSERT INTO flights (ffrom, fto) VALUES
	('moscow', 'omsk'),
	('novgorod', 'kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');

-- Таблица cities
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255) NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO cities VALUES
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod', 'Новгород'),
	('kazan', 'Казань'),
	('omsk', 'Омск');

SELECT * FROM cities;
SELECT * FROM flights;

-- Выполним действие вывода рейсов
SELECT 
	f.id id,
	c.name ffrom,
	c2.name fto
FROM
	flights f
JOIN
	cities c 
ON 
	f.ffrom = c.label
JOIN
	cities c2 
ON 
	f.fto = c2.label;


 