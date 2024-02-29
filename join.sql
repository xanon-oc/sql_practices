-- Active: 1708872227409@@127.0.0.1@5432@management@public

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY, 
    username VARCHAR(25) NOT NULL
    );

CREATE TABLE post (
    id SERIAL PRIMARY KEY, 
    title text, 
    user_id INTEGER REFERENCES "user"(id)
    );


INSERT INTO "user"(username) VALUES
    ('user1'),
    ('niloy'),
    ('rubel'),
    ('akash'),
    ('hasan');
    ('mamu');


INSERT INTO post (title, user_id) VALUES
    ('The Adventures of a Mischievous Cat: A Tale of Tangled Yarn', 1),
    ('How I Accidentally Became a Professional Potato Peeler', 2),
    ('The Secret Life of Socks: A Documentary', 3),
    ('Surviving Mondays: A Guide for Coffee Lovers', 4),
    ('The Great Pillow Fight of 2024: A Pillowcase Perspective', 5),
    ('My Dog''s Hilarious Attempts at Yoga', 1),
    ('Cooking Disasters: When Dinner Fights Back', 2),
    ('A Day in the Life of a Confused Penguin: On Land or Ice?', 3),
    ('The Chronicles of Couch Potato: Tales from the Lazy Side', 4),
    ('Adventures in Grocery Shopping: A Quest for the Last Avocado', 5);


   

-- Joining Tables With Inner Join

-- retrieve all posts title with their username

SELECT title, username FROM post
    JOIN "user" ON post.user_id = "user".id;
-- you can also write this code like this below
SELECT * FROM post p
    INNER JOIN "user" u ON p.user_id = u.id;

-- this above join called inner join


-- now Understanding Left And Right Joins

INSERT INTO post (id, title, user_id) VALUES
    (11, 'This is a test text: A Tale of Tangled Yarn', NULL);

-- now lets see the left join query

SELECT * FROM post 
   LEFT JOIN "user" ON post.user_id = "user".id;


-- now lets see the right join query

SELECT * FROM post 
   RIGHT JOIN "user" ON post.user_id = "user".id;


-- we can also write the left and right join like this RIGHT OUTER - LEFT OUTER


-- 19-8 Exploring Full, Cross, And Natural Joins


SELECT * FROM post
    FULL JOIN "user" ON post.user_id= "user".id; -- FULL OUTER JOIN




-- if in two tables the reference id is same then you can use USING keyword

SELECT * FROM employees
    JOIN departments USING(dept_id);



SELECT * FROM "user";
SELECT * FROM post;