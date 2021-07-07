-- Временная зона UTC
SET time_zone = "+00:00";

-- Удаляем таблицу, если существует
DROP TABLE IF EXISTS `users`;
-- Создаем таблицу пользователей
CREATE TABLE `users` (
	`id` INT UNSIGNED,
  	`name` VARCHAR(255) COMMENT 'Имя пользователя'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT = 'Пользователи';

-- Добавим индекс по столбцу 'id' и что значения будут уникальны
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
  
-- Включаем автоувеличение значения по столбцу 'id' и, что не может быть NULL в этом столбце
ALTER TABLE `users` 
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

