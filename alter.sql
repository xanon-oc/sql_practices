-- Active: 1708872227409@@127.0.0.1@5432@management
-- SELECT * from person;

-- add column to existing table

ALTER TABLE person
    ADD COLUMN email VARCHAR(45) DEFAULT 'default@gmail.com' NOT NULL; 


-- inserting data 

INSERT INTO person (id,username,age,isactive,email)  VALUES(7,'meraj',25,true,'meraj@gmail.com');


-- drop COLUMN

ALTER TABLE person
    DROP COLUMN email;


-- rename COLUMN

ALTER TABLE person
    RENAME COLUMN age to user_age;


-- change constrain 

ALTER TABLE person
    ALTER COLUMN username TYPE VARCHAR(50);


-- add constrain into existing column

ALTER TABLE person
    ALTER COLUMN user_age set NOT NULL;


-- remove constrain 
ALTER TABLE person
    ALTER COLUMN user_age DROP NOT NULL;


-- add unique constrain or primary key or check constrain or foreign key constrain  
ALTER TABLE person
    ADD constraint unique_person_user_age UNIQUE(user_age); 


-- drop CONSTRAINT

ALTER TABLE person
    DROP constraint unique_person_user_age; 


-- remove table 
TRUNCATE TABLE person;




SELECT * from person;