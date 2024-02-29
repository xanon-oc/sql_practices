-- Active: 1708872227409@@127.0.0.1@5432@management@public


SELECT * FROM employees;

CREATE VIEW dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;


-- use of VIEW

SELECT * FROM dept_avg_salary;



CREATE VIEW test_view_1
AS
SELECT employee_name, salary, department_name 
FROM employees 
WHERE department_name in 
(SELECT department_name FROM employees WHERE department_name LIKE '%R%');

SELECT * FROM test_view_1;

-- Simplifying complex queries
-- Improved security
-- Enhanced data abstraction