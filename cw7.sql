-- Сгруппируйте данные о сотрудниках по возрасту: 
-- 1 группа – младше 20 лет
-- 2 группа – от 20 до 40 лет
-- 3 группа – старше  40 лет 
-- Для каждой группы  найдите суммарную зарплату
select  
	CASE
		WHEN age < 20
			THEN "1 группа"
		WHEN age >= 20 AND age < 40
			THEN "2 группа"
		WHEN age >= 40 
			THEN "3 группа"
	END AS age_group,
	SUM(salary) 
from staff
group by age_group;