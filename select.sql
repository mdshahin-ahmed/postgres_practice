-- Active: 1709043338501@@127.0.0.1@5432@ph

CREATE Table students(
    student_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) not NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(50),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
  ('John', 'Doe', 21, 'A', 'Mathematics', 'john.doe@email.com', '2000-05-15', 'O+', 'USA'),
  ('Alice', 'Smith', 22, 'B', 'Physics', NULL, '1999-08-25', 'AB-', 'Canada'),
  ('Bob', 'Johnson', 20, 'C', 'Chemistry', 'bob.johnson@email.com', '2001-02-10', 'A+', 'UK'),
  ('Emma', 'Williams', 23, 'A', 'Computer Science', 'emma.williams@email.com', '1998-11-30', 'B-', 'Australia'),
  ('Daniel', 'Brown', 21, 'B', 'Biology', 'daniel.brown@email.com', '2000-07-05', 'O-', 'Germany');

TRUNCATE table students

SELECT * FROM students

SELECT email FROM students

SELECT email,age FROM students

SELECT email,age,blood_group FROM students

SELECT email as student_email FROM students

SELECT email as "student email" FROM students

SELECT email as "student email",age FROM students

SELECT * FROM students ORDER BY first_name ASC

SELECT * FROM students ORDER BY first_name DESC

SELECT * FROM students ORDER BY age ASC

SELECT * FROM students ORDER BY dob ASC

-- unique/skip same value   
select DISTINCT country FROM students

select DISTINCT blood_group FROM students

select * FROM students
    WHERE country = 'USA'

select * FROM students
    WHERE grade = 'A' AND course = 'Mathematics'

select * FROM students
    WHERE (country = 'USA' OR country = 'UK') AND age = 20


SELECT * FROM students 
    WHERE age > 20

SELECT * FROM students 
    WHERE age >= 20

SELECT * FROM students 
    WHERE age != 20

-- != <> same 
SELECT * FROM students 
    WHERE age <> 20

-- scalar function 
SELECT upper(first_name) as first_name_upper_case, * from students

SELECT concat(first_name,' ',last_name) as full_name, * from students

SELECT length(first_name) from students

-- aggregate function 
SELECT avg(age) FROM students

SELECT max(age) FROM students

SELECT sum(age) FROM students

SELECT count(*) FROM students

-- combine scalar and aggregate
SELECT max(length(first_name)) FROM students

SELECT * FROM students


    WHERE NOT country = 'USA'

-- null all time return null 
SELECT NULL = 1

SELECT * FROM students
    WHERE email is NOT NULL

select COALESCE(email,'Email not provided') as "Email",* FROM students

SELECT * FROM students
    WHERE country IN('USA','UK')

SELECT * FROM students
    WHERE country NOT IN('USA','UK')

SELECT * FROM students
    WHERE age BETWEEN 19 AND 22

SELECT * FROM students
    WHERE dob BETWEEN '2000-01-01' AND '2005-01-01' ORDER BY dob

-- end with 
SELECT * FROM students 
    WHERE first_name LIKE '%e'

-- start with 
SELECT * FROM students 
    WHERE first_name LIKE 'J%'

-- first 2 CHARACTER then a then anything
SELECT * FROM students 
    WHERE first_name LIKE '__h%'

-- case INSENSITIVE
SELECT * FROM students 
    WHERE first_name ILIKE 'a%'

SELECT * FROM students LIMIT 2 OFFSET 2 * 0

SELECT * FROM students LIMIT 2 OFFSET 2 * 1

SELECT * FROM students

DELETE FROM students 
    WHERE grade = 'C'

UPDATE students 
    set email = 'default@gmail.com' 
    WHERE student_id = 12

UPDATE students 
    set email = 'default@gmail.com', age = 30 
    WHERE student_id = 12