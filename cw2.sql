-- Выведите все записи, отсортированные по полю "age" по возрастанию
select * from staff order by age;

-- Выведите все записи, отсортированные по полю “first_name"
select * from staff order by first_name;

-- Выведите записи полей "first_name ", “last_name", "age", отсортированные по полю "firstname " в алфавитном порядке по убыванию
select * from staff order by first_name DESC, last_name, age;

-- Выполните сортировку по полям " first_name " и "age" по убыванию
select * from staff order by first_name DESC, last_name DESC;