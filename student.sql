CREATE DATABASE IF NOT EXISTS details;
USE details;
CREATE TABLE IF NOT EXISTS students(student_id INT PRIMARY KEY,name VARCHAR(20),age INT,gender VARCHAR(20),marks INT,city VARCHAR(20));
INSERT INTO students VALUES
(1,'NIVETHA',19,'FEMALE',100,'Sathyamangalam'),
(2,'PAVITHRA',19,'FEMALE',100,'Namakkal'),
(3,'GAYATHRI',18,'FEMALE',100,'karur'),
(4,'SASMITHA',19,'FEMALE',100,'Methupalayam'),
(5,'KAVINESWHARI',19,'FEMALE',100,'Namakkal'),
(6,'RAHUL',19,'MALE',100,'Namakkal');
SELECT*FROM students;
SELECT name,marks FROM students;
UPDATE students SET age = '19' WHERE student_id = 3;
DELETE FROM students WHERE student_id = 6; 
