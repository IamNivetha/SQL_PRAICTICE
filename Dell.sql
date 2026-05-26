CREATE DATABASE IF NOT EXISTS dell;
USE dell;
CREATE TABLE IF NOT EXISTS emp(
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(5),
salary BIGINT,
age INT,
city VARCHAR(50),
experience int
);

INSERT INTO emp VALUES
(1, 'Nivetha', 'IT', 45000, 21, 'Chennai', 2),
(2, 'Arun', 'HR', 30000, 25, 'Coimbatore', 3),
(3, 'Kavin', 'IT', 55000, 24, 'Madurai', 4),
(4, 'Meena', 'Finance', 60000, 28, 'Chennai', 6),
(5, 'Ravi', 'HR', 35000, 26, 'Salem', 2),
(6, 'Divya', 'IT', 70000, 30, 'Coimbatore', 8),
(7, 'Saran', 'Finance', 50000, 27, 'Erode', 5),
(8, 'Priya', 'Marketing', 40000, 23, 'Madurai', 2),
(9, 'Vignesh', 'Marketing', 42000, 24, 'Chennai', 3),
(10, 'Anu', 'IT', 65000, 29, 'Salem', 7);

SELECT count(*) AS total_emp FROM emp;
SELECT AVG(salary) AS avg_sal FROM emp;
SELECT MAX(salary) AS highest_sal FROM emp;
SELECT MIN(age) AS min_age FROM emp;
SELECT SUM(salary) AS total_sal FROM emp;

SELECT department,count(department) AS total_empin_dept FROM emp GROUP BY department;
SELECT department,AVG(salary) AS dept_emp FROM emp GROUP BY department;
SELECT department ,MAX(salary) AS dept_emp_max FROM emp GROUP BY department;
SELECT department ,MIN(salary) AS dept_emp_min FROM emp GROUP BY department;
SELECT department,SUM(salary) AS dept_emp_sum FROM emp GROUP BY department;

SELECT department ,count(department) AS dept FROM emp  GROUP BY department HAVING count(department)>3;
SELECT department,AVG(salary) AS avg_sal FROM emp GROUP BY department HAVING AVG(salary)>=50000;
SELECT city ,SUM(salary) AS total_sal FROM emp GROUP BY city HAVING SUM(salary)>=10000;
SELECT department,MAX(salary) AS max_sal FROM emp GROUP BY department HAVING MAX(salary)>=60000;
SELECT department ,MIN(experience) AS min_exp FROM emp GROUP BY department HAVING MIN(experience)<3;

SELECT count(name) FROM emp WHERE city = 'Chennai';
SELECT AVG(age) FROM emp WHERE department = 'IT';
SELECT SUM(salary) FROM emp WHERE department = 'HR';
SELECT city, AVG(salary)  FROM emp GROUP BY city ORDER BY AVG(salary) DESC limit 1;
SELECT department, AVG(salary) FROM emp GROUP BY department ORDER BY AVG(salary) ASC limit 1;

