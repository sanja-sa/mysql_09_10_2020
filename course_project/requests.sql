-- Запросы к БД

-- Для страницы профиля выборка информации профиля пользователя, выборка ленты истории опыта
-- EXPLAIN
SELECT * FROM experiences WHERE emploee_id = 45;
SELECT * FROM emploees;
-- EXPLAIN
SELECT 
  e.org_name,
  e.title,
  e.description,
  e.from_at,
  e.to_at
  FROM emploees emp
  LEFT JOIN experiences e
    ON e.emploee_id = emp.id
  WHERE emp.id = 45;

-- Поиск по хэштегам организации
SELECT * FROM organizations;
SELECT * FROM hashtags;
SELECT * FROM hashtags_organizations;
-- EXPLAIN
SELECT 
  o.name org_name,
  CONCAT_WS(', ', country.name, c.name, o.adress ) org_adress
  FROM hashtags
  JOIN hashtags_organizations ho 
    ON id = ho.hashtag_id
  JOIN organizations o
    ON ho.org_id = o.id 
  JOIN cities c
    ON o.city_id = c.id
  JOIN countries country 
    ON c.country_id = country.id 
  WHERE tag_ignore_case = LOWER("slivcjs");
 
 -- Поск организаций по вхождению в хэштег
-- EXPLAIN
SELECT 
  o.id id, 
  o.name org_name
  FROM hashtags
  JOIN hashtags_organizations ho 
    ON ho.hashtag_id = id
  JOIN organizations o
    ON ho.org_id = o.id 
  WHERE tag_ignore_case LIKE LOWER("sli%");

-- Поиск списка людей для определенной организации
SELECT * FROM organizations;
SELECT * FROM organizations_emploees;
SELECT 
  e.id,
  CONCAT_WS(' ', e.last_name, e.first_name) name 
  FROM organizations o
  LEFT JOIN organizations_emploees oe 
    ON oe.org_id = o.id
  LEFT JOIN emploees e
    ON oe.emploee_id = e.id
  WHERE o.id = 2;


-- Поиск количества связей для двух людей ( 3 - й, 4 - й ) если более 6, то считать, что связи нет, чтобы в бесконечную рекурсию не ушли
SELECT * FROM contacts;
SELECT * FROM emploees;
-- Связь ищем со 2 до 27 например
-- EXPLAIN
WITH RECURSIVE emploee_deep_cte (deep, next_id, path_to) AS
(
  SELECT
    1 deep, 
    contact_id next_id,
    CAST(emploee_id AS CHAR(200)) path_to
    FROM contacts 
    WHERE emploee_id = 2
  UNION ALL
  SELECT 
    deep + 1 deep, 
    c.contact_id next_id,
    CONCAT_WS(',', ed.path_to, c.emploee_id) path_to
    FROM emploee_deep_cte ed
    JOIN contacts c
      ON c.emploee_id = next_id
    WHERE 
      next_id != 27 AND deep < 6
)
SELECT 
  deep, 
  CONCAT_WS(',', ed.path_to, next_id) path_to 
  FROM emploee_deep_cte ed 
  WHERE next_id = 27;

 
-- Для страницы вакансии отображение информации ( организация, кол-во кандидатов )
-- Например empl_id = 3  org_id = 91
SELECT * FROM vacancies;
SELECT * FROM candidats;

SELECT 
  COUNT(*) cnt_candidats
  FROM vacancies v
  LEFT JOIN candidats c
    ON v.id = c.vacancie_id 
  WHERE v.id = 1;

 -- Кондидаты в разрезе вакансии самы молодой и самый старый 
SELECT DISTINCT
  c.vacancie_id,
  FIRST_VALUE(CONCAT_WS(' ', e.first_name, e.last_name)) OVER (PARTITION BY c.vacancie_id ORDER BY ep.birthday DESC) yngst_usr_name,
  FIRST_VALUE(CONCAT_WS(' ', e.first_name, e.last_name)) OVER (PARTITION BY c.vacancie_id ORDER BY ep.birthday) oldst_usr_name
  FROM candidats c
    LEFT JOIN emploees e
      ON e.id = c.emploee_id 
    LEFT JOIN emploee_profiles ep 
      ON e.id = ep.id
    WHERE birthday IS NOT NULL;
 
 
 
 
 
 
 
 
