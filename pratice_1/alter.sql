

-- alter 

-- add a new column

ALTER TABLE students
    ADD COLUMN gender VARCHAR(25) DEFAULT('others') NOT NULL;


-- remove a column 

ALTER TABLE students    
    DROP column gender;



-- insert demo data

INSERT INTO students (
    first_name,
    last_name,
    age,
    grade,
    course,
    email,
    dob,
    blood_group,
    country
)VALUES(
    'Niloy','Roy',23,'A+','Web Dev Level 2','niloyroy184@gmail.com','2000-03-10','B+','Bangladesh'
);


-- rename table 
ALTER TABLE students
    RENAME student_id to id;


-- change constrain

ALTER TABLE students
   ALTER COLUMN gender TYPE VARCHAR(26);


--  add constrain

ALTER TABLE students 
    ALTER COLUMN gender set not NULL

-- remove CONSTRAINT
ALTER TABLE students
    ALTER COLUMN gender DROP NOT NULL

-- add unique or foreign key constrain or primary key or check constrain

ALTER TABLE students 
    ADD CONSTRAINT set_first_name_to_unique UNIQUE(first_name) 

-- drop constraint
ALTER TABLE students
    DROP CONSTRAINT set_first_name_to_unique;

-- remove records of a table
TRUNCATE TABLE students;





-- view all data
SELECT * FROM students