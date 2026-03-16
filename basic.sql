CREATE DATABASE mphasis;
USE mphasis;
CREATE TABLE IF NOT EXISTS employe(
    emp_id INT PRIMARY KEY,
    name VARCHAR(40),
    salary BIGINT,
    dept_id INT,
    manager_id INT
    );
    INSERT INTO employe VALUES
(101,'Ravi',70000,1,201),
(102,'Meena',55000,2,202),
(103,'Arjun',60000,1,201),
(104,'Kiran',45000,3,203),
(105,'Anu',75000,2,202);
    SELECT*FROM employe;
    SELECT name FROM employe;
    CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);
INSERT INTO departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance');
SELECT*FROM employe WHERE salary >60000;
SELECT*FROM employe WHERE salary<50000;
SELECT*FROM employe WHERE dept_id = 1;
    SELECT*FROM employe WHERE salary BETWEEN 50000 AND 70000;
    SELECT*FROM employe WHERE name LIKE '%A';
    SELECT*FROM employe ORDER BY salary DESC;
    SELECT  COUNT(*) AS total_emp FROM employe;
    SELECT AVG(salary) AS avg_salary FROM employe;
    SELECT MAX(salary) AS max_salary FROM employe;
    USE mphasis;
SELECT dept_id,count(*) AS each_emp FROM employe GROUP BY dept_id;


