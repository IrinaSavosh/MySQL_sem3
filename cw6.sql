-- 1. Выведите общее количество напечатанных страниц каждым сотрудником
select staff_id, sum(count_page) as "общее количество напечатанных страниц "
from activity_staff
group by staff_id;

-- 2. Посчитайте количество страниц за каждый день
select data_activity as "День", sum(count_page) as "Количество страниц"
from activity_staff
group by data_activity;

-- 3. Найдите среднее арифметическое по количеству ежедневных страниц
select data_activity as "День", 
	avg(count_page) as "Количество страниц"
from activity_staff
group by data_activity;