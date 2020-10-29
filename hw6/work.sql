-- --------------------------------------------------------------------------------------
-- Практическое задание к Уроку 6
-- --------------------------------------------------------------------------------------

-- 1. Создать и заполнить таблицы лайков и постов.
-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  target_id BIGINT UNSIGNED NOT NULL,
  target_type_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO 
	target_types (name) 
VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Создадим таблицу постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  community_id BIGINT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id BIGINT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- 2. Создать все необходимые внешние ключи и диаграмму отношений.
ALTER TABLE likes
  	ADD CONSTRAINT likes_user_id_fk 
  		FOREIGN KEY (user_id) REFERENCES users(id),
  	ADD CONSTRAINT likes_target_type_id_fk 
  		FOREIGN KEY (target_type_id) REFERENCES target_types(id);
  	
  	
ALTER TABLE posts
  	ADD CONSTRAINT posts_user_id_fk 
  		FOREIGN KEY (user_id) REFERENCES users(id),
  	ADD CONSTRAINT posts_community_id_fk 
  		FOREIGN KEY (community_id) REFERENCES communities(id),
  	ADD CONSTRAINT posts_media_id_fk 
  		FOREIGN KEY (media_id) REFERENCES media(id);
-- Диаграмму прикладывал к 3 уроку

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT 
	(SELECT gender FROM profiles p WHERE p.user_id=l.user_id) as gender,
	COUNT(*) as count_likes
FROM 
	likes l
GROUP BY
	gender;


-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).
SELECT 
	SUM(count_likes) all_young_likes
FROM
	(	SELECT 
			(SELECT birthday FROM profiles p WHERE p.user_id=l.user_id) as birthday,
			COUNT(*) as count_likes
		FROM 
			likes l
		GROUP BY
			birthday
		ORDER BY
			birthday DESC
		LIMIT 10
	) as t;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).
SELECT 
	(	SELECT 
			CONCAT_WS(' ', last_name, first_name)
		FROM
			users
		WHERE
			m_a.id=id
	) as name,
	count_mess
FROM
	(	SELECT 
			from_user_id as id, 
			COUNT(*) as count_mess 
		FROM 
			messages m 
		WHERE 
			m.from_user_id 
		GROUP BY 
			m.from_user_id 
		ORDER BY 
			count_mess DESC 
		LIMIT 10
	) as m_a;







 