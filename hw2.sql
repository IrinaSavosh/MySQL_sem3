-- Задание №2.
-- Отсортируйте поле “сумма” в порядке убывания и возрастания
select * from staff order by salary; -- по возрастанию
select * from staff order by salary DESC;-- по убыванию

-- Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой
-- SELECT * FROM staff ORDER BY salary DESC LIMIT 5; 
SELECT * FROM staff
ORDER BY salary desc
LIMIT 0,005;

-- Выполните группировку всех сотрудников по специальности “рабочий”, зарплата которых превышает 20000
-- !!! Не совсем понятно задание, поэтому сделала 2 варианта
-- Количество работников с ЗП выше 20 000
select  COUNT(*)  AS "Рабочие с зарплатой больее 20 000" from staff
where salary > 20000 && post = 'Рабочий'
group by post;

-- Показать всех рабочих, у которых ЗП больше 20000
select * from staff
where salary > 20000 && post = 'Рабочий';
