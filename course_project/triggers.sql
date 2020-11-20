-- Триггеры

-- -----------------------------------------------------------------------------------------
-- 1. При изменении статуса контакта прописывать время в accepted_at автоматом
-- -----------------------------------------------------------------------------------------
DROP TRIGGER IF EXISTS contact_state_update;
CREATE TRIGGER contact_state_update BEFORE UPDATE ON contacts
FOR EACH ROW
BEGIN
  IF NEW.state != 'waited' THEN
    SET NEW.accepted_at = NOW();
  END IF;
END;

-- Тестируем триггер
-- SELECT * FROM contacts;
-- INSERT INTO contacts (emploee_id,contact_id) VALUES (1, 2);
-- INSERT INTO contacts (emploee_id,contact_id) VALUES (1, 3);
-- UPDATE contacts SET state = 'declined' WHERE emploee_id = 1 AND contact_id = 2;


-- -----------------------------------------------------------------------------------------
-- 2. При добавлении/обновлении в хэштеги значения, добавляем в в нижнем регистре хэштег для быстрого поиска
-- -----------------------------------------------------------------------------------------
DROP TRIGGER IF EXISTS hashtags_tag_update;
CREATE TRIGGER hashtags_tag_update BEFORE UPDATE ON hashtags
FOR EACH ROW
BEGIN
  SET NEW.tag_ignore_case = LOWER(NEW.tag);
END;

DROP TRIGGER IF EXISTS hashtags_tag_insert;
CREATE TRIGGER hashtags_tag_insert BEFORE INSERT ON hashtags
FOR EACH ROW
BEGIN
  SET NEW.tag_ignore_case = LOWER(NEW.tag);
END;

-- Тестируем триггер
-- SELECT * FROM hashtags;
-- INSERT INTO hashtags (tag) VALUES ("RooT");
-- UPDATE hashtags SET tag = 'YunM' WHERE tag_ignore_case = "root";


