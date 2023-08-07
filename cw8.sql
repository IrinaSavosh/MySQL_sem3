-- 1. Выведите id сотрудников, которые напечатали более 500 страниц за всех дни
select * from activity_staff;
select staff_id, 
sum(count_page) as counts
from activity_staff
group by staff_id
having counts > 500;

-- 2.  Выведите  дни, когда работало более 3 сотрудников Также укажите кол-во сотрудников, которые работали в выбранные дни.
select data_activity, 
count(*) as counts
from activity_staff
group by data_activity
having counts > 2;

-- 3. Выведите среднюю заработную плату по должностям, которая составляет более 30000
select post, 
avg(salary) as post_salary
from staff
group by post
having post_salary > 30000;