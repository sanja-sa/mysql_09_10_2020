-- --------------------------------------------------------------------------------------
-- Урок 10. Вебинар. Транзакции, переменные, представления. Администрирование. Хранимые процедуры и функции, триггеры
-- --------------------------------------------------------------------------------------

-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.

-- Поиск и сортировка по названиям группам ( как в служебных целях, так и для доп функционала, лучше добавить дополнительно хэштеги 
-- и по ним уже множественно размделять на категории групп ) 
DESC communities;
SHOW INDEX FROM communities;
-- Индекс уже есть
-- CREATE UNIQUE INDEX communities_name_uq ON communities(name);

-- Служебнвый индексы для отслеживания медиаресурсов ( например для статистики или для поиска ( сортировка ) типу медиаресурса )
DESC media;
SHOW INDEX FROM media;
CREATE INDEX media_filename_idx ON media(filename);

DESC users;
SHOW INDEX FROM users;
-- Уже есть нужные индексы
-- Какой-либо поиск или сортировка по e-mail'у
-- CREATE UNIQUE INDEX users_email_uq ON users(email);
-- Поиск по телефону ( как служебный, так и какой-то дополнительный функционал )
-- CREATE UNIQUE INDEX users_phone_uq ON users(phone);

-- Сортировка по дню рождения
SHOW INDEX FROM profiles;
CREATE INDEX profiles_uq ON profiles(birthday);

-- Поиск по составному индексу сообщений
DESC messages;
SHOW INDEX FROM messages;
-- CREATE INDEX messages_from_user_id_to_user_id_idx ON messages(from_user_id, to_user_id);

-- Обычно, периодически, индексы проверяются и удаляются, если их не используют, для уменьшения размера БД.

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
SELECT 
  DISTINCT c.name group_name,
  AVG(cu.user_id) OVER () avg_usrs_in_groups,
  FIRST_VALUE(CONCAT_WS(' ', u.first_name, u.last_name)) OVER (PARTITION BY cu.community_id ORDER BY p.birthday) yngst_usr_name,
  FIRST_VALUE(CONCAT_WS(' ', u.first_name, u.last_name)) OVER (PARTITION BY cu.community_id ORDER BY p.birthday DESC) oldst_usr_name,
  COUNT(cu.user_id) OVER (PARTITION BY cu.community_id) cnt_usrs_in_groups,
  COUNT(cu.user_id) OVER () cnt_usrs_in_system,
  COUNT(cu.user_id) OVER (PARTITION BY cu.community_id) / COUNT(cu.user_id) OVER () * 100 percent_users_in_groups
  FROM 
    communities c
    LEFT JOIN communities_users cu
      ON c.id = cu.community_id
    LEFT JOIN users u
      ON u.id = cu.user_id
    LEFT JOIN profiles p
      ON p.user_id = cu.user_id;


