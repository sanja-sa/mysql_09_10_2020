-- Практическое задание по теме “Введение в проектирование БД”

-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА ПОЛЬЗОВАТЕЛЕЙ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `users` (
	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор строки",
	`first_name` 	VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Имя пользователя",
	`last_name` 	VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Фамилия пользователя",
	`email` 		VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Почта",
	`phone` 		VARCHAR(100) NOT NULL COMMENT "Телефон",
	`created_at` 	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Пользователи";

-- Свойства
ALTER TABLE `users`
	ADD PRIMARY KEY (`id`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
	ADD UNIQUE (`email`),
	ADD UNIQUE (`phone`);
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА ТИПОВ МЕДИАФАЙЛОВ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `media_types` ( 
	`id`			BIGINT UNSIGNED COMMENT "Идентификатор строки",
	`name` 			VARCHAR(255) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Название типа",
	`created_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки" 
)
COLLATE='utf8_unicode_ci' 
ENGINE=InnoDB 
COMMENT "Типы медиафайлов";

-- Свойства
ALTER TABLE `media_types`
	ADD PRIMARY KEY (`id`),
	ADD UNIQUE (`name`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА МЕДИАФАЙЛОВ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `media` (
  	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор строки",
  	`user_id` 		BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил файл",
  	`filename` 		VARCHAR(255) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Путь к файлу",
  	`size` 			BIGINT NOT NULL COMMENT "Размер файла",
  	`metadata` 		JSON COMMENT "Метаданные файла",
  	`media_type_id` BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  	`created_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Медиафайлы";

-- Свойства
ALTER TABLE `media`
	ADD PRIMARY KEY (`id`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
	ADD UNIQUE (`filename`),
	ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE,
	ADD FOREIGN KEY (`media_type_id`) REFERENCES `media_types`(`id`) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА СТРАН
-- -----------------------------------------------------------------------------------------
CREATE TABLE `country` (
  	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор строки",
  	`name` 			VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Название стран",
  	`created_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Страны";

-- Свойства
ALTER TABLE `country`
	ADD PRIMARY KEY (`id`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
	ADD UNIQUE (`name`);
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА ГОРОДОВ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `city` (
  	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор строки",
  	`country_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на страну, которой принадлежит город",
  	`name` 			VARCHAR(100) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Название типа",
  	`created_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  	
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Страны";

-- Свойства
ALTER TABLE `city`
	ADD PRIMARY KEY (`id`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
	ADD UNIQUE (`name`),
	ADD FOREIGN KEY (`country_id`) REFERENCES `country`(`id`) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА ПРОФИЛЕЙ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `profiles` (
  	`user_id` 		BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя", 
  	`gender` 		ENUM('f', 'm') COMMENT "Пол",
  	`birthday` 		DATE COMMENT "Дата рождения",
  	`photo_id` 		BIGINT UNSIGNED COMMENT "Ссылка на основную фотографию пользователя",
  	`status` 		VARCHAR(30) COLLATE 'utf8_unicode_ci' COMMENT "Текущий статус",
  	`city_id` 		BIGINT UNSIGNED COMMENT "Ссылка на город проживания",
  	`created_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Профили";

-- Свойства
ALTER TABLE `profiles`
	ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE,
	ADD FOREIGN KEY (`photo_id`) REFERENCES `media`(`id`),
	ADD FOREIGN KEY (`city_id`) REFERENCES `city`(`id`);
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА СООБЩЕНИЙ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `messages` (
  	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор строки", 
  	`from_user_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  	`body` 			TEXT NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Текст сообщения",
  	`is_important` 	BOOLEAN COMMENT "Признак важности",
  	`created_at` 	TIMESTAMP DEFAULT NOW() COMMENT "Время создания строки",
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) 
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Сообщения";

-- Свойства
ALTER TABLE `messages`
	ADD PRIMARY KEY (`id`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
	ADD FOREIGN KEY (`from_user_id`) REFERENCES `users`(`id`);
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА СВЯЗИ СООБЩЕНИЙ И ПОЛЬЗОВАТЕЛЕЙ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `messages_users_relations` (
	`message_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на сообщение",
  	`user_id` 		BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  	`is_delivered` 	BOOLEAN COMMENT "Признак доставки",
  	`created_at` 	TIMESTAMP DEFAULT NOW() COMMENT "Время создания строки",
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) 
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Связи сообщений и пользователей";

-- Свойства
ALTER TABLE `messages_users_relations`
	ADD PRIMARY KEY (`message_id`, `user_id`) COMMENT "Составной первичный ключ",
	ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE,
	ADD FOREIGN KEY (`message_id`) REFERENCES `messages`(`id`) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА СООБЩЕНИЙ
-- -----------------------------------------------------------------------------------------
-- CREATE TABLE `messages` (
--   	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор строки", 
--   	`from_user_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
--   	`to_user_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
--   	`body` 			TEXT NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Текст сообщения",
--   	`is_important` 	BOOLEAN COMMENT "Признак важности",
--   	`is_delivered` 	BOOLEAN COMMENT "Признак доставки",
--   	`created_at` 	TIMESTAMP DEFAULT NOW() COMMENT "Время создания строки",
--   	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
-- ) 
-- COLLATE='utf8_unicode_ci'
-- ENGINE=InnoDB 
-- COMMENT "Сообщения";
-- 
-- Свойства
-- ALTER TABLE `messages`
-- 	ADD PRIMARY KEY (`id`),
-- 	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
-- 	ADD FOREIGN KEY (`from_user_id`) REFERENCES `users`(`id`),
-- 	ADD FOREIGN KEY (`to_user_id`) REFERENCES `users`(`id`);
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА СТАТУСОВ ДРУЖЕСКИХ ОТНОШЕНИЙ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `friendship_statuses` (
  	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор строки",
  	`name` 			VARCHAR(150) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Название статуса",
  	`created_at` 	DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	`updated_at` 	DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Статусы дружбы";

-- Свойства
ALTER TABLE `friendship_statuses`
	ADD PRIMARY KEY (`id`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
	ADD UNIQUE (`name`);
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА ДРУЖБЫ
-- -----------------------------------------------------------------------------------------
CREATE TABLE `friendships` (
  	`user_id` 		BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
  	`friend_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
  	`status_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на статус (текущее состояние) отношений",
  	`requested_at` 	TIMESTAMP DEFAULT NOW() COMMENT "Время отправления приглашения дружить",
  	`confirmed_at` 	TIMESTAMP COMMENT "Время подтверждения приглашения",
  	`created_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Таблица дружбы";

-- Свойства
ALTER TABLE `friendships`
	ADD PRIMARY KEY (`user_id`, `friend_id`) COMMENT "Составной первичный ключ",
  	ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE,
  	ADD FOREIGN KEY (`friend_id`) REFERENCES `users`(`id`),
  	ADD FOREIGN KEY (`status_id`) REFERENCES `friendship_statuses`(`id`);
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА ГРУПП
-- -----------------------------------------------------------------------------------------
CREATE TABLE `communities` (
  	`id` 			BIGINT UNSIGNED COMMENT "Идентификатор сроки",
  	`name` 			VARCHAR(150) NOT NULL COLLATE 'utf8_unicode_ci' COMMENT "Название группы",
  	`created_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  
)
COLLATE='utf8_unicode_ci' 
ENGINE=InnoDB 
COMMENT "Группы";

-- Свойства
ALTER TABLE `communities`
	ADD PRIMARY KEY (`id`),
	MODIFY `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
	ADD UNIQUE (`name`);
-- -----------------------------------------------------------------------------------------


-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА СВЯЗИ ПОЛЬЗОВАТЕЛЕЙ И ГРУПП
-- -----------------------------------------------------------------------------------------
CREATE TABLE `communities_users` (
  	`community_id` 	BIGINT UNSIGNED COMMENT "Ссылка на группу",
	`user_id` 		BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  	`created_at`	DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки"
)
COLLATE='utf8_unicode_ci' 
ENGINE=InnoDB 
COMMENT "Участники групп, связь между пользователями и группами";

-- Свойства
ALTER TABLE `communities_users`
	ADD PRIMARY KEY (`community_id`, `user_id`) COMMENT "Составной первичный ключ",
	ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
	ADD FOREIGN KEY (`community_id`) REFERENCES `communities`(`id`) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

 
-- -----------------------------------------------------------------------------------------
-- ТАБЛИЦА СВЯЗИ СООБЩЕНИЙ И ГРУПП
-- -----------------------------------------------------------------------------------------
CREATE TABLE `messages_communities_relations` (
	`message_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на сообщение",
  	`community_id` 	BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  	`created_at` 	TIMESTAMP DEFAULT NOW() COMMENT "Время создания строки",
  	`updated_at` 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) 
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB 
COMMENT "Связи сообщений и групп";

-- Свойства
ALTER TABLE `messages_communities_relations`
	ADD PRIMARY KEY (`message_id`, `community_id`) COMMENT "Составной первичный ключ",
	ADD FOREIGN KEY (`community_id`) REFERENCES `communities`(`id`) ON DELETE CASCADE,
	ADD FOREIGN KEY (`message_id`) REFERENCES `messages`(`id`) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

