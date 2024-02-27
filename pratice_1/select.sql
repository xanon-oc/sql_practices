
-- create a table 

CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

-- removing records 
TRUNCATE TABLE students;

--  insert new data

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
)VALUES
    ('John', 'Doe', 18, 'A', 'Mathematics', 'john.doe@email.com', '2005-05-15', 'O+', 'USA'),
    ('Jane', 'Smith', 19, 'B', 'Physics', 'jane.smith@email.com', '2004-08-22', 'A-', 'Canada'),
    ('Alice', 'Johnson', 20, 'A', 'Chemistry', NULL, '2003-12-10', 'B+', 'UK'),
    ('Bob', 'Williams', 18, 'C', 'History', NULL, '2005-02-28', 'AB-', 'Australia'),
    ('Emily', 'Brown', 17, 'B', 'English', 'emily.brown@email.com', '2005-10-05', 'O-', 'USA'),
    ('Michael', 'Jones', 19, 'A', 'Biology', 'michael.jones@email.com', '2003-11-30', 'A+', 'Canada'),
    ('Sophia', 'Garcia', 18, 'B', 'Computer Science', NULL, '2004-03-18', 'B-', 'Spain'),
    ('Daniel', 'Martinez', 20, 'C', 'Art', 'daniel.martinez@email.com', '2003-07-20', 'AB+', 'Mexico'),
    ('Olivia', 'Lee', 19, 'A', 'Economics', NULL, '2004-09-12', 'A-', 'USA'),
    ('William', 'Hernandez', 18, 'B', 'Geography', 'william.hernandez@email.com', '2005-01-25', 'B+', 'Canada'),
    ('Emma', 'Lopez', 20, 'C', 'Sociology', NULL, '2003-04-08', 'O+', 'Australia'),
    ('James', 'Gonzalez', 19, 'A', 'Political Science', 'james.gonzalez@email.com', '2004-06-14', 'A-', 'UK'),
    ('Ethan', 'Wilson', 18, 'B', 'Psychology', NULL, '2005-03-30', 'AB-', 'USA'),
    ('Ava', 'Taylor', 20, 'C', 'Philosophy', 'ava.taylor@email.com', '2003-08-17', 'O-', 'Canada'),
    ('Mia', 'Anderson', 19, 'A', 'Music', NULL, '2004-11-23', 'B+', 'Australia'),
    ('Benjamin', 'Thomas', 18, 'B', 'Drama', 'benjamin.thomas@email.com', '2005-07-07', 'AB+', 'USA'),
    ('Charlotte', 'White', 20, 'C', 'Foreign Languages', NULL, '2003-01-19', 'A+', 'UK'),
    ('Noah', 'Clark', 19, 'A', 'Ethics', 'noah.clark@email.com', '2004-04-26', 'B-', 'Australia'),
    ('Liam', 'Rodriguez', 18, 'B', 'Health Education', NULL, '2005-09-03', 'O+', 'USA'),
    ('Amelia', 'Hill', 20, 'C', 'Physical Education', NULL, '2003-05-29', 'AB-', 'Canada');


-- select specific data

SELECT last_name, age, email from students;

-- oder by sorting

SELECT first_name, age, email FROM students ORDER BY age ASC;

-- if you want to know how many country are there without duplicate

SELECT DISTINCT country FROM students;



-- filtering


-- SELECT students from USA
-- SELECT students with "A" grade in physics
-- SELECT students with specific blood group (A+)
-- SELECT students from the USA or from Australia
-- SELECT students from the USA or from Australia and the age is 20
-- SELECT students with a grade of "A" OR "B" in math or physics
-- SELECT students older them 18

-- answers

-- SELECT students from USA
SELECT * from students
    WHERE country='USA'

-- SELECT students with "B" grade in physics

SELECT * FROM students
    WHERE course='Physics' AND grade='B'

-- SELECT students with specific blood group (A+)

SELECT * from students
    WHERE blood_group = 'A+'

-- SELECT students from the USA or from Australia

SELECT * FROM students
    WHERE country='USA' OR country='Australia'

-- SELECT students from the USA or from Australia and the age is 18

SELECT * FROM students
    WHERE (country='USA' OR country='Australia') AND age=18;

-- SELECT students with a grade of "A" OR "B" in math or physics

SELECT * FROM students
    WHERE (grade='A' OR grade='B') AND (course='Math' OR course='Physics')

-- SELECT students older them 18

SELECT * FROM students
    WHERE age>18


-- not this options

SELECT * FROM students
    WHERE country <> 'USA' AND country <> 'Australia' 

-- view all data
SELECT * from students;




-- Exploring Scalar And Aggregate Functions In PostgreSQL


-- Scalar


-- convert to upper case
SELECT upper(first_name) as first_name, * FROM students;

-- concat 

SELECT concat(first_name,' ',last_name) as full_name, * FROM students;

-- Logical Negation NOT, Understanding NULL And The Null-Coalescing Operator In PostgreSQL

SELECT * FROM students
    WHERE NOT country='USA'

-- use of is

SELECT * FROM students
    WHERE email IS NOT NULL;

-- use of COALESCE -- if value is null show second parameter value

SELECT COALESCE(email,'email address not provided') as email,* FROM students