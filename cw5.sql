CREATE TABLE activity_staff(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	staff_id INT, 
    data_activity DATE, 
    count_page INT,
    FOREIGN KEY (staff_id) REFERENCES staff (id)
    );


INSERT INTO activity_staff(staff_id, data_activity, count_page) VALUES
(1, '2022-01-01', 250),
(2, '2022-01-01', 220),
(3, '2022-01-01', 170),
(1, '2022-01-02', 100),
(2, '2022-01-02', 220),
(3, '2022-01-02', 300),
(7, '2022-01-02', 350),
(1, '2022-01-03', 168),
(2, '2022-01-03', 62),
(3, '2022-01-03', 84);