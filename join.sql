-- Active: 1709043338501@@127.0.0.1@5432@ph
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


DROP Table post;
DROP Table "user";

SELECT * from "user";
SELECT * from post;

SELECT title,username from post  
    JOIN "user" on post.user_id = "user".id

SELECT * from post  
    JOIN "user" on post.user_id = "user".id

SELECT post.id from post  
    JOIN "user" on post.user_id = "user".id

SELECT * from post as p  
    JOIN "user" as u on p.user_id = u.id

SELECT * from post p  
    JOIN "user" u on p.user_id = u.id

SELECT * from post p  
   INNER JOIN "user" u on p.user_id = u.id

SELECT * from "user"  
   INNER JOIN post on post.user_id = "user".id


SELECT * from post  
    JOIN "user" on post.user_id = "user".id

INSERT INTO post (id,title, user_id) VALUES
(5,'This is test', NUll)

SELECT * from post  
    LEFT JOIN "user" on post.user_id = "user".id

SELECT * from post  
    RIGHT JOIN "user" on post.user_id = "user".id

SELECT * from post  
    FULL JOIN "user" on post.user_id = "user".id

