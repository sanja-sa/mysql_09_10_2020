-- Курсовой проект

-- -----------------------------------------------------------------------------------------
-- 1. ТАБЛИЦА СТРАН
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS countries CASCADE;
CREATE TABLE countries (
  id          BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  name        VARCHAR(100) NOT NULL COMMENT "Название страны",
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB
COMMENT "Страны";

-- Свойства
ALTER TABLE countries
  ADD PRIMARY KEY (id),
  MODIFY
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD UNIQUE (name);
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 2. ТАБЛИЦА ГОРОДОВ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS cities CASCADE;
CREATE TABLE cities (
  id          BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  country_id  BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на страну, которой принадлежит город",
  name        VARCHAR(100) NOT NULL COMMENT "Название города",
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"  	
)
ENGINE=InnoDB 
COMMENT "Страны";

-- Свойства
ALTER TABLE cities
  ADD PRIMARY KEY (id),
  MODIFY 
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD UNIQUE (name),
  ADD CONSTRAINT cities_country_id_fk 
   FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 3. ТАБЛИЦА РАБОТНИКОВ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS emploees CASCADE;
CREATE TABLE emploees (
  id           BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  first_name   VARCHAR(50) NOT NULL COMMENT "Имя пользователя",
  last_name    VARCHAR(50) NOT NULL COMMENT "Фамилия пользователя",
  email        VARCHAR(50) NOT NULL COMMENT "Почта",
  phone        VARCHAR(50) NOT NULL COMMENT "Телефон",
  created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Работников";

-- Свойства
ALTER TABLE emploees
  ADD PRIMARY KEY (id),
  MODIFY 
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD UNIQUE (email),
  ADD UNIQUE (phone);
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 4. ТАБЛИЦА ОПЫТА РАБОТНИКОВ И СВЯЗИ ОПЫТА И СОТРУДНИКОВ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS experiences CASCADE;
CREATE TABLE experiences (
  id           BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  emploee_id   BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки работника",
  org_name     VARCHAR(100) NOT NULL COMMENT "Название организации",
  title        VARCHAR(100) COMMENT "Должность в организации",
  description  TEXT COMMENT "Описание работы в организации",
  from_at      DATE NOT NULL COMMENT "Дата начала работы",
  to_at        DATE COMMENT "Дата окончания работы",
  created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Опыт работников";

-- Свойства
ALTER TABLE experiences
  ADD PRIMARY KEY (id),
  MODIFY 
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD CONSTRAINT experiences_emploee_id_fk 
	FOREIGN KEY (emploee_id) REFERENCES emploees(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 5. ТАБЛИЦА ПРОФИЛЕЙ РАБОТНИКОВ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS emploee_profiles CASCADE;
CREATE TABLE emploee_profiles (
  id           BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  gender       ENUM('f', 'm') NOT NULL COMMENT "Пол",
  birthday     DATE COMMENT "Дата рождения",
  city_id      BIGINT UNSIGNED COMMENT "Ссылка на город проживания",
  created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Профили работников";

-- Свойства
ALTER TABLE emploee_profiles
  ADD CONSTRAINT emploee_profiles_id_fk 
	FOREIGN KEY (id) REFERENCES emploees(id) ON DELETE CASCADE,
  ADD CONSTRAINT emploee_profiles_city_id_fk 
	FOREIGN KEY (city_id) REFERENCES cities(id);
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 6. ТАБЛИЦА ОРГАНИЗАЦИЙ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS organizations CASCADE;
CREATE TABLE organizations (
  id           BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  name         VARCHAR(100) NOT NULL COMMENT "Название",
  descriptions TEXT COMMENT "Описание организации",
  city_id      BIGINT UNSIGNED COMMENT "Идентификатор города",
  adress       VARCHAR(200) COMMENT "Адрес организации в городе", -- TODO: Нормальную геопозицию сделать
  email        VARCHAR(50) COMMENT "Почта",
  phone        VARCHAR(50) COMMENT "Телефон",
  created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Организации";

-- Свойства
ALTER TABLE organizations
  ADD PRIMARY KEY (id),
  MODIFY 
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD CONSTRAINT organizations_city_id_fk 
	FOREIGN KEY (city_id) REFERENCES cities(id);
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 7. ТАБЛИЦА СВЯЗИ ОРГАНИЗАЦИЙ И РАБОТНИКОВ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS organizations_emploees CASCADE;
CREATE TABLE organizations_emploees (
  org_id       BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор организации",
  emploee_id   BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор сотрудника",
  created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Связь организаций и работниов";

-- Свойства
ALTER TABLE organizations_emploees
  ADD PRIMARY KEY (org_id, emploee_id) COMMENT "Составной первичный ключ",
  ADD CONSTRAINT organizations_emploees_org_id_fk 
	FOREIGN KEY (org_id) REFERENCES organizations(id) ON DELETE CASCADE,
  ADD CONSTRAINT organizations_emploees_emploee_id_fk 
	FOREIGN KEY (emploee_id) REFERENCES emploees(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 8. ТАБЛИЦА ХЭШТЕГОВ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS hashtags CASCADE;
CREATE TABLE hashtags (
  id          BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор",
  tag         VARCHAR(50) NOT NULL COMMENT "Хэштег",
  tag_ignore_case VARCHAR(50) CHARACTER NOT NULL COMMENT "Хэштег для быстрого поиска в нижнем регистре",
  created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Хэштеги";

-- Свойства
ALTER TABLE hashtags
  ADD PRIMARY KEY (id),
  MODIFY 
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD UNIQUE(tag),
  ADD UNIQUE(tag_ignore_case);
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 9. ТАБЛИЦА СВЯЗЕЙ ХЭШТЕГОВ И ОРГАНИЗАЦИЙ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS hashtags_organizations CASCADE;
CREATE TABLE hashtags_organizations (
  hashtag_id  BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор хэштега",
  org_id      BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор организации",
  created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Связь хэштегов и организаций";

-- Свойства
ALTER TABLE hashtags_organizations
  ADD PRIMARY KEY (hashtag_id, org_id) COMMENT "Составной первичный ключ",
  ADD CONSTRAINT hashtags_organizations_org_id_fk 
	FOREIGN KEY (org_id) REFERENCES organizations(id) ON DELETE CASCADE,
  ADD CONSTRAINT hashtags_organizations_hashtag_id_fk 
	FOREIGN KEY (hashtag_id) REFERENCES hashtags(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 10. ТАБЛИЦА СООБЩЕНИЙ РАБОТНИКОВ ДРУГИМ РАБОТНИКАМ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS emploees_messages CASCADE;
CREATE TABLE emploees_messages (
  id 			  BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  from_emploee_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_emploee_id   BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  body 			  TEXT NOT NULL COMMENT "Текст сообщения",
  created_at 	  TIMESTAMP DEFAULT NOW() COMMENT "Время создания строки",
  updated_at 	  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) 
ENGINE=InnoDB 
COMMENT "Сообщения";

-- Свойства
ALTER TABLE emploees_messages
  ADD PRIMARY KEY (id),
  MODIFY 
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD CONSTRAINT emploees_messages_from_emploee_id_fk 
    FOREIGN KEY (from_emploee_id) REFERENCES emploees(id) ON DELETE CASCADE,
  ADD CONSTRAINT emploees_messages_to_emploee_id_fk 
    FOREIGN KEY (to_emploee_id) REFERENCES emploees(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 11. ТАБЛИЦА КОНТАКТОВ РАБОТНИКОВ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS contacts CASCADE;
CREATE TABLE contacts (
  emploee_id    BIGINT UNSIGNED NOT NULL COMMENT "Ссылка работника инициатора",
  contact_id    BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на работника получателя приглашения",
  state         ENUM('waited','accepted','declined') DEFAULT 'waited' COMMENT "Cостояние отношений",
  requested_at  TIMESTAMP DEFAULT NOW() COMMENT "Время отправления приглашения установления контактов",
  accepted_at   TIMESTAMP COMMENT "Время подтверждения приглашения",
  created_at 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Контакты работников";

-- Свойства
ALTER TABLE contacts
  ADD PRIMARY KEY (emploee_id, contact_id) COMMENT "Составной первичный ключ",
  ADD CONSTRAINT contacts_emploee_id_fk 
    FOREIGN KEY (emploee_id) REFERENCES emploees(id) ON DELETE CASCADE,
  ADD CONSTRAINT contacts_contact_idd_fk 
    FOREIGN KEY (contact_id) REFERENCES emploees(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 12. ТАБЛИЦА ВАКАНСИЙ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS vacancies CASCADE;
CREATE TABLE vacancies (
  id            BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки",
  emploee_id    BIGINT UNSIGNED NOT NULL COMMENT "Ссылка работника инициатора вакансии",
  org_id        BIGINT UNSIGNED NOT NULL COMMENT "Ссылка от какой компании вакансия",
  description   TEXT NOT NULL COMMENT "Текст описания вакансии",
  title         VARCHAR(255) NOT NULL COMMENT "Должность",
  salary_from   INT COMMENT "Начало вилки зарплаты",
  salary_to     INT COMMENT "Конец вилки зарплаты",
  created_at 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Вакансии";

-- Свойства
ALTER TABLE vacancies
  ADD PRIMARY KEY (id),
  MODIFY 
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1,
  ADD CONSTRAINT vacancies_emploee_id_fk 
    FOREIGN KEY (emploee_id) REFERENCES emploees(id) ON DELETE CASCADE,
  ADD CONSTRAINT vacancies_org_id_fk 
    FOREIGN KEY (org_id) REFERENCES organizations(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------------
-- 13. ТАБЛИЦА СВЯЗИ КАНДИДАТОВ И ВАКАНСИЙ
-- -----------------------------------------------------------------------------------------
DROP TABLE IF EXISTS candidats CASCADE;
CREATE TABLE candidats (
  vacancie_id   BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на вакансию",
  emploee_id    BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на кандидата",
  created_at 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
)
ENGINE=InnoDB 
COMMENT "Кандидаты";

-- Свойства
ALTER TABLE candidats
  ADD PRIMARY KEY (vacancie_id, emploee_id) COMMENT "Составной первичный ключ",
  ADD CONSTRAINT candidats_vacancy_id_fk
    FOREIGN KEY (vacancie_id) REFERENCES vacancies(id) ON DELETE CASCADE,
  ADD CONSTRAINT candidats_emploee_id_fk 
    FOREIGN KEY (emploee_id) REFERENCES emploees(id) ON DELETE CASCADE;
-- -----------------------------------------------------------------------------------------

-- TODO: Таблица отслеживания вакансий
-- TODO: Таблица и функционал доступа премиум
-- TODO: Таблицы для биллинга ( при покупке премиум )
-- TODO: Таблица продвижения вакансий
-- TODO: Таблица публикаций
-- TODO: Таблица отслеживаемых компаний у работника
-- TODO: Медиа функциональность
-- TODO: Таблица отслеживаемых хэшей
-- TODO: Функционал мероприятий
-- TODO: Таблица образований для работников .+ корректировка профилей работников
-- TODO: Таблица проектов
-- TODO: Таблица интересов
-- TODO: Таблица лайков для сообщений
-- TODO: Таблица комментариев для сообщений
-- TODO: Функционал при удалении пользователя ( например просто помечаем, что он не активный ), сообщений, групп и т.д.
















