CREATE DATABASE details1;
USE details1;

CREATE TABLE IF NOT EXISTS departments(dept_id INT PRIMARY KEY,dept_name VARCHAR(20) NOT NULL);
INSERT INTO departments VALUES(1,'IT'),
(2,'HR'),
(3,'Finance');
CREATE TABLE IF NOT EXISTS employees
(emp_id INT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
salary DECIMAL(10,2) ,
dept_id INT,
manager_id INT,
join_date DATE,
FOREIGN KEY(dept_id) REFERENCES departments(dept_id),
FOREIGN KEY(manager_id) REFERENCES employees(emp_id)
);
INSERT INTO employees VALUES(1,'Ravi',50000,1,NULL,'2022-01-10'),
(2,'Meena',60000,1,1,'2022-03-15'),
(3,'Arjun',70000,2,1,'2023-05-20'),
(4,'Kiran',60000,2,3,'2023-06-10'),
(5,'Divya',80000,3,3,'2021-09-25'),
(6,'Sneha',NULL,3,3,'2022-12-01'),
(7,'Rahul',50000,1,2,'2023-07-12'),
(8,'Priya',90000,2,3,'2020-11-11');


CREATE TABLE IF NOT EXISTS orders(order_id INT PRIMARY KEY,emp_id INT PRIMARY KEY,amount  INT, order_date INT); 
INSERT INTO orders VALUES(101,1,5000,'2023-01-01'),
(102,2,7000,'2023-02-15'),
(103,3,10000,'2023-03-20'),
(104,4,3000,'2023-03-20'),
(105,4,8000,'2023-05-05'),
(106,5,12000,'2023-06-30'),
(107,1,4000,'2023-07-07');

SELECT name FROM employees;
SELECT salary FROM employees WHERE salary >6000;
SELECT name FROM employees WHERE dept_name = 'IT';
SELECT COUNT(*) FROM employees;
SELECT MAX(salary) AS highest_salary FROM employees;
SELECT MIN(salary) AS lowest_salary FROM employees;
SELECT*FROM employees WHERE salary IS NULL;
SELECT*FROM employees WHERE YEAR(join_date)>2022;
SELECT*FROM employees WHERE salary BETWEEN 50000 AND 70000;
SELECT*FROM employees WHERE name LIKE 'R%';