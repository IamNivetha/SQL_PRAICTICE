CREATE DATABASE IF NOT EXISTS hcl;
USE hcl;
CREATE TABLE IF NOT EXISTS employeess(
EmpID INT PRIMARY KEY,
Name VARCHAR(30),
Department VARCHAR(50),
salary INT,
JoiningDate DATE,
ManagerID int
);

INSERT INTO employeess VALUES(101,'Ravi','IT',70000,'2023-01-10',201),
(102,'Meena','HR',55000,'2022-05-14',202),
(103,'Arjun','IT',80000,'2021-09-20',201),
(104,'Divya','Finance',60000,'2023-03-11',203),
(105,'Kiran','IT',NULL,'2022-11-18',201),
(106,'Sneha','HR',52000,'2024-01-02',202),
(107,'Rahul','Finance',75000,'2020-07-15',203),
(108,'Anu','IT',65000,'2023-06-30',201);

SELECT*FROM  employeess;
SELECT name,salary FROM employeess;
SELECT salary FROM employeess WHERE salary>60000;
SELECT salary FROM employeess WHERE salary<60000;
SELECT name FROM employeess WHERE Department = 'IT';
SELECT count(*) AS count FROM employeess;
SELECT MAX(salary) AS highest_salary FROM employeess;
SELECT MIN(salary) AS lowest_salary FROM employeess;
SELECT SUM(salary)  AS total_salary FROM employeess;
SELECT*FROM employeess WHERE salary BETWEEN 50000 AND 70000;
SELECT*FROM employeess WHERE name  LIKE '%R';
SELECT*FROM employeess WHERE name LIKE '%a';
SELECT*FROM employeess WHERE salary IS NULL;
SELECT*FROM employeess WHERE YEAR (joiningDate)>2022;
SELECT*FROM employeess ORDER BY salary ASC;
SELECT*FROM employeess ORDER BY salary DESC;


