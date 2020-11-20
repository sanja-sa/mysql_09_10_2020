-- Функции

-- Процедура отклика на ваканcию
DROP PROCEDURE IF EXISTS apply_vacancy;
-- Создадим процедуру
CREATE PROCEDURE apply_vacancy(IN vacancy_id BIGINT UNSIGNED, IN emploee_id BIGINT UNSIGNED)
  BEGIN
    INSERT INTO candidats (vacancie_id, emploee_id) VALUES (vacancy_id, emploee_id);
  END;

-- SELECT * FROM emploees;
-- SELECT * FROM vacancies;

-- Тестируем
-- CALL apply_vacancy(1, 4);

