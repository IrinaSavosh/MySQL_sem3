-- Отсортируйте данные по полю ЗП (salary) в порядке убывания, возрастания
select * from staff order by salary; -- по возрастанию
select * from staff order by salary DESC;-- по убыванию

-- Выделите 5 макимальных ЗП
select * from staff order by salary DESC
LIMIT 5;



-- Посчитайте суммарную ЗП по каждой специальности (post)
select post, sum(salary) as "Сумма зарплат специальности"
from staff
group by post;

-- Найдите количество сотрудников со специальностью "Рабочий" в возрасте от 24 до 49 лет включительноa
select COUNT(*) as "Количество рабочих в возрасте от 24 до 49 лет"
from staff
where age >24 and age <= 49;


-- Найдите количество специальностей
select COUNT(DISTINCT post)  as "Количество специальностей" 
from staff;

-- Выведите специальности, у которых ср.возраст сотрудников меньше 30 лет(35 лет)
select post, AVG(age) 
from staff
group by post
HAVING AVG(age) < 35; -- увеличила ср.возраст до 35, чтобы вывелась хоть какая-нибудь информация
