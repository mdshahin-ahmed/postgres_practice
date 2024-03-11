-- Active: 1709043338501@@127.0.0.1@5432@ph

SELECT * from person2

create TABLE person2(
id INTEGER,
name VARCHAR(50),
age VARCHAR(50)
)

ALTER Table person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL

ALTER Table person2
DROP COLUMN email

ALTER Table person2 
RENAME COLUMN age to user_age

ALTER TABLE person2 
ALTER COLUMN user_name TYPE VARCHAR(50)

INSERT INTO person2 values(2,'shahin',25)

ALTER TABLE person2 
ALTER COLUMN user_age set NOT NULL

ALTER TABLE person2 
ALTER COLUMN user_age DROP NOT NULL

ALTER TABLE person2 
add constraint unique_person2_user_age UNIQUE(user_age)

ALTER TABLE person2 
DROP constraint unique_person2_user_age 

-- delete all row  
TRUNCATE table person2


