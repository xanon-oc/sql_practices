-- Active: 1708872227409@@127.0.0.1@5432@management@public


CREATE TABLE "user" (
    id SERIAL PRIMARY KEY, 
    username VARCHAR(25) NOT NULL
    );

CREATE TABLE post (
    id SERIAL PRIMARY KEY, 
    title text, 
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
    );

ALTER TABLE post
    ALTER COLUMN user_id set NOT NULL; 

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


INSERT INTO "user"(username) 
    VALUES('user1'),
    ('niloy'),
    ('rubel'),
    ('akash'),
    ('hasan');



-- now retrieve user id 1 s post

SELECT * from post
    WHERE user_id= 4

-- retrieve all posts title with their username

SELECT * FROM post;


SELECT * FROM post;



-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID


--  Enforcing Referential Integrity: Behaviors During Data Deletion

-- Deletion constraint on DELETE user
-- Restrict Deletion → ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion → ON DELETE CASCADE
-- Setting NULL ON DELETE SET NULL
-- Set Default value → ON DELETE SET DEFAULT


DELETE FROM "user"
    WHERE id = 5;

-- Cascading Deletion → ON DELETE CASCADE (use this keyword where you are creating the table)

DROP TABLE post;
DROP TABLE "user";


SELECT * FROM "user";
SELECT * FROM post;