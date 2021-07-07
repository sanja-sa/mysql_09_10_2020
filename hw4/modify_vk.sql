-- Практическое задание 4 доработка БД

SHOW TABLES;

-- Переименуем неправильно названные таблицы
RENAME TABLE city TO cities;
RENAME TABLE country TO countries;

-- Анализируем таблицу стран
SELECT * FROM countries LIMIT 10;
-- Правим даты обновления
UPDATE countries SET updated_at = created_at WHERE updated_at < created_at;
SELECT COUNT(id) FROM countries;

-- Анализируем таблицу городов
DESC cities;
SELECT * FROM cities LIMIT 10;
-- Подправим по рандому идентифкаторы стран ( заодно обновятся даты обновления )
UPDATE cities SET country_id = FLOOR(1 + RAND() * 100);
SELECT COUNT(id) FROM cities;

-- Добавляем таблицу статусов пользователя
CREATE TABLE profile_statuses ( 
	id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
	name VARCHAR(20) NOT NULL COMMENT "Значение статуса профиля",
	created_at 	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	updated_at 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Статусы пользователя";
-- Добавим свойства для ключа
ALTER TABLE profile_statuses
	ADD PRIMARY KEY (id),
	MODIFY id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
-- Анализируем таблицу статусов
DESC profile_statuses;
-- Добавляем статусы
INSERT INTO profile_statuses (name) VALUES ('disabled'), ('pending'), ('active');
SELECT * FROM profile_statuses LIMIT 10;

-- Анализируем таблицу типов медиа файлов
DESC media_types;
SELECT * FROM media_types;
-- Удалим все данные и сделаем свои типы
UPDATE media SET media_type_id = 1;
DELETE FROM media_types WHERE id != 1;
UPDATE media_types SET name = 'audio' WHERE id = 1;
INSERT INTO media_types (id,name) VALUES (2, 'image'), (3, 'video')

-- Анализируем таблицу медиа файлов
DESC media;
SELECT * FROM media LIMIT 10;
-- Разбрасываем идентифкаторы пользователей
UPDATE media SET user_id = FLOOR(1 + RAND() * 100);
-- Обновляем размер файлов
UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;
-- Разбрасыаем типы медиа файлов
UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);
-- Временная талбица для расширений файлов и типов файлов
DROP TABLE IF EXISTS extensions;
CREATE TEMPORARY TABLE extensions (name VARCHAR(10), media_types VARCHAR(10));
INSERT INTO extensions VALUES ('jpg', 'image'), ('avi', 'video'), ('mpeg', 'video'), ('png', 'image'), ('mp3', 'audio');
SELECT * FROM extensions;
-- Разбрасываем ссылки на файлы
UPDATE media SET filename = CONCAT(
  'http://dropbox.net/vk/',
  (SELECT last_name FROM users ORDER BY RAND() LIMIT 1),
  (SELECT FLOOR(1 + RAND() * 100)),
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);
-- Заполняем метаданные
UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');
 
-- Анализируем таблицу профайлов
DESC profiles;
-- Удаляем колонку status
ALTER TABLE profiles DROP COLUMN status;
-- Добавляем колонку ссылок на статусы
ALTER TABLE profiles ADD COLUMN status_id BIGINT UNSIGNED AFTER city_id;
SELECT * FROM profiles LIMIT 10;
-- Поменяем города по рандому
UPDATE profiles SET city_id = FLOOR(1 + RAND() * 100);
-- Обновим статусы пользователей
UPDATE profiles SET status_id = 1;
UPDATE profiles SET status_id = FLOOR(2 + RAND() * 2) WHERE FLOOR(2 + RAND() * 100) < 20 LIMIT 10;
-- Таки проверим
SELECT * FROM profiles WHERE status_id != 1 LIMIT 10;
-- Установим правильный идентифкатор на аватар
UPDATE profiles SET photo_id = (SELECT id FROM media WHERE media.user_id = profiles.user_id AND media.media_type_id = 2 LIMIT 1);

-- Анализируем таблицу статусов дружбы
DESC friendship_statuses;
SELECT * FROM friendship_statuses LIMIT 10;
-- Правим даты обновления
UPDATE friendship_statuses SET updated_at = created_at WHERE updated_at < created_at;

-- Анализируем таблицу дружбы
DESC friendships;
SELECT * FROM friendships LIMIT 10;
-- Обновляем ссылки на друзей
UPDATE friendships SET 
  user_id = FLOOR(1 + RAND() * 100),
  friend_id = FLOOR(1 + RAND() * 100);
 -- Исправляем случай когда user_id = friend_id
UPDATE friendships SET friend_id = friend_id + 1 WHERE user_id = friend_id;

-- Анализируем таблицу групп
SELECT * FROM communities;
-- Оставим 20 групп
DELETE FROM communities WHERE id > 20;

-- Анализируем таблицу связи пользователей и групп
SELECT * FROM communities_users;
-- Поправим группы
UPDATE communities_users SET community_id = FLOOR(1 + RAND() * 20);

-- Анализируем таблицу сообщений
DESC messages;
SELECT * FROM messages LIMIT 10;
-- Обновляем значения ссылок на отправителя и получателя сообщения
UPDATE messages SET 
  from_user_id = FLOOR(1 + RAND() * 100);
  
-- Анализируем таблицу связей сообщений пользователей
DESC messages_users_relations;
SELECT * FROM messages_users_relations LIMIT 10;
DELETE FROM messages_users_relations LIMIT 50;
-- Обновляем значения ссылок на отправителя и получателя сообщения
UPDATE messages_users_relations SET 
  user_id = FLOOR(1 + RAND() * 100);
UPDATE messages_users_relations SET 
  message_id = FLOOR(1 + RAND() * 100);

-- Анализируем таблицу связей сообщений для групп
DESC messages_communities_relations;
SELECT * FROM messages_communities_relations LIMIT 10;
DELETE FROM messages_communities_relations LIMIT 50;
-- Обновляем значения ссылок на отправителя и получателя сообщения
UPDATE messages_communities_relations SET 
  community_id = FLOOR(1 + RAND() * 20);
UPDATE messages_communities_relations SET 
  message_id = FLOOR(1 + RAND() * 100);
 