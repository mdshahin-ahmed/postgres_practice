-- Active: 1709043338501@@127.0.0.1@5432@ph
SELECT * from employees

CREATE VIEW dept_avg_salary
as
SELECT department_name, avg(salary) from employees GROUP BY department_name

SELECT * from dept_avg_salary


