-- --------------------------------------------------------------------------------------
-- Практическое задание к Уроку 8
-- --------------------------------------------------------------------------------------

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT 
  p.gender gender,
  COUNT(*) as count_likes
  FROM likes l
    JOIN profiles p 
	  USING (user_id)
  GROUP BY
    gender
  ORDER BY 
    count_likes DESC
  LIMIT 1;

-- 4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).
SELECT
  SUM(youngest_likes.count_likes) total_young_likes
  FROM(
	SELECT
	  p.birthday,
	  COUNT(l.target_id) count_likes
	  FROM profiles p
	  	LEFT JOIN likes l
	  	  ON l.target_id = p.user_id
	  	GROUP BY 
	  	  p.birthday
		ORDER BY
		  birthday DESC
		LIMIT 10
	) as youngest_likes;

-- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).

SELECT 
  CONCAT(first_name, ' ', last_name, ' ', u.id) AS user,
  COUNT(DISTINCT l.id) +
  COUNT(DISTINCT m.id) +
  COUNT(DISTINCT media.id) total_activity
  FROM users u
  	LEFT JOIN likes l
  		ON l.user_id = u.id
  	LEFT JOIN messages m
  		ON m.from_user_id = u.id
    LEFT JOIN media
  		ON media.user_id = u.id
  GROUP BY user
  ORDER BY total_activity
  LIMIT 10;








 