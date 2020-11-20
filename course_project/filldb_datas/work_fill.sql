-- Откорректируем внесенные автоматом данные 

-- Страны
SELECT * FROM countries;
UPDATE countries SET updated_at = created_at WHERE updated_at < created_at;

-- Города
SELECT * FROM cities;
UPDATE cities SET updated_at = created_at WHERE updated_at < created_at;
UPDATE cities SET country_id = FLOOR(1 + RAND() * 100);

-- Работники
SELECT * FROM emploees;
UPDATE emploees SET updated_at = created_at WHERE updated_at < created_at;

-- Профили работников
SELECT * FROM emploees_profile;
UPDATE emploees_profile SET city_id = FLOOR(1 + RAND() * 100);
-- Сделаем разброс по разным параметрам
UPDATE emploees_profile SET birthday = NULL WHERE birthday < '1980-01-01';
UPDATE emploees_profile SET city_id = NULL WHERE created_at < '1990-01-01';

-- Организации
SELECT * FROM organizations;
UPDATE organizations SET city_id = FLOOR(1 + RAND() * 100);

-- Организации - сотрудники
SELECT * FROM organizations_emploees;
UPDATE organizations_emploees SET updated_at = created_at WHERE updated_at < created_at;
UPDATE organizations_emploees SET emploee_id = FLOOR(1 + RAND() * 100);
UPDATE organizations_emploees SET org_id = FLOOR(1 + RAND() * 100);

-- Опыт сотрудников. У сотрудника может ничего нет в опыте, а может быть много чего. Сделаем так
SELECT * FROM experiences;
UPDATE experiences SET updated_at = created_at WHERE updated_at < created_at;
UPDATE experiences SET to_at = DATE_ADD(from_at, INTERVAL FLOOR(100 + RAND() * 100) DAY) WHERE from_at > to_at;
UPDATE experiences SET emploee_id  = FLOOR(1 + RAND() * 100);
SELECT * FROM experiences WHERE emploee_id  = 8;
UPDATE experiences SET to_at = NULL WHERE created_at < '1990-01-01';
 
-- Контакты сотрудников
SELECT * FROM contacts;
UPDATE contacts SET updated_at = created_at WHERE updated_at < created_at;
UPDATE contacts SET accepted_at = requested_at WHERE accepted_at < requested_at;
UPDATE contacts SET accepted_at = NULL WHERE state = 'wait';
UPDATE contacts SET contact_id = FLOOR(1 + RAND() * 100);
UPDATE contacts SET contact_id = FLOOR(1 + RAND() * 100) WHERE emploee_id = contact_id;
UPDATE contacts SET emploee_id = FLOOR(1 + RAND() * 100);

-- Сообщения работников
SELECT * FROM emploees_messages;
UPDATE emploees_messages SET from_emploee_id = FLOOR(1 + RAND() * 100);
UPDATE emploees_messages SET to_emploee_id = FLOOR(1 + RAND() * 100);
UPDATE emploees_messages SET to_emploee_id = FLOOR(1 + RAND() * 100) WHERE from_emploee_id = to_emploee_id;
SELECT * FROM emploees_messages WHERE from_emploee_id  = 8;

-- Хэштеги
SELECT * FROM hashtags;
UPDATE hashtags SET updated_at = created_at WHERE updated_at < created_at;
UPDATE hashtags SET tag_ignore_case = LOWER(tag);

-- Связь хэштеги и организации
SELECT * FROM hashtags_organizations;
INSERT INTO hashtags_organizations (hashtag_id, org_id)
  WITH RECURSIVE gen_org_cte AS 
  (
    SELECT 1 as id, FLOOR(1 + RAND() * 100) as org_id
    UNION ALL
    SELECT id + 1 as id, FLOOR(1 + RAND() * 100) as org_id FROM gen_org_cte WHERE id < 100 
  )
  SELECT id hashtag_id, org_id FROM gen_org_cte;

 -- Вакансии
SELECT * FROM vacancies;
UPDATE vacancies SET updated_at = created_at WHERE updated_at < created_at;
UPDATE vacancies SET salary_from = NULL WHERE created_at < '1990-01-01';
UPDATE vacancies SET salary_to = NULL WHERE created_at > '2003-01-01';
UPDATE vacancies SET salary_to = ( FLOOR( salary_to / 100 ) ) * 100 WHERE salary_to IS NOT NULL;
UPDATE vacancies SET salary_from = ( FLOOR( salary_from / 100 ) ) * 100 WHERE salary_from IS NOT NULL;

-- Кандидаты на вакансии
SELECT * FROM candidats;
-- Сгенерим данные
INSERT INTO candidats (vacancie_id, emploee_id)
  SELECT 
    id vacancie_id, 
    FLOOR(1 + RAND() * 100) emploee_id
    FROM 
      vacancies 
    WHERE 
      org_id > 30 AND emploee_id < 70 
    LIMIT 50;
 UPDATE candidats SET vacancie_id = FLOOR(1 + RAND() * 100);

