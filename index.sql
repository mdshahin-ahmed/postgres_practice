-- Active: 1709043338501@@127.0.0.1@5432@ph@public
EXPLAIN ANALYSE
SELECT * from employees

CREATE INDEX idx_employees_last_name
on employees (last_name)

SHOW data_directory