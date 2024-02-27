
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
    ('Emily', 'Brown', 17, 'B', 'English', NULL, '2005-10-05', 'O-', 'USA'),
    ('Michael', 'Jones', 19, 'A', 'Biology', 'michael.jones@email.com', '2003-11-30', 'A+', 'Canada'),
    ('Sophia', 'Garcia', 18, 'B', 'Computer Science', 'sophia.garcia@email.com', '2004-03-18', 'B-', 'Spain'),
    ('Daniel', 'Martinez', 20, 'C', 'Art', NULL, '2003-07-20', 'AB+', 'Mexico'),
    ('Olivia', 'Lee', 19, 'A', 'Economics', 'olivia.lee@email.com', '2004-09-12', 'A-', 'USA'),
    ('William', 'Hernandez', 18, 'B', 'Geography', NULL, '2005-01-25', 'B+', 'Canada'),
    ('Emma', 'Lopez', 20, 'C', 'Sociology', 'emma.lopez@email.com', '2003-04-08', 'O+', 'Australia'),
    ('James', 'Gonzalez', 19, 'A', 'Political Science', NULL, '2004-06-14', 'A-', 'UK'),
    ('Ethan', 'Wilson', 18, 'B', 'Psychology', NULL, '2005-03-30', 'AB-', 'USA'),
    ('Ava', 'Taylor', 20, 'C', 'Philosophy', NULL, '2003-08-17', 'O-', 'Canada'),
    ('Mia', 'Anderson', 19, 'A', 'Music', NULL, '2004-11-23', 'B+', 'Australia'),
    ('Benjamin', 'Thomas', 18, 'B', 'Drama', NULL, '2005-07-07', 'AB+', 'USA'),
    ('Charlotte', 'White', 20, 'C', 'Foreign Languages', NULL, '2003-01-19', 'A+', 'UK'),
    ('Noah', 'Clark', 19, 'A', 'Ethics', NULL, '2004-04-26', 'B-', 'Australia'),
    ('Liam', 'Rodriguez', 18, 'B', 'Health Education', NULL, '2005-09-03', 'O+', 'USA'),
    ('Amelia', 'Hill', 20, 'C', 'Physical Education', NULL, '2003-05-29', 'AB-', 'Canada'),
    ('Sophie', 'Walker', 21, 'B', 'Biology', 'sophie.walker@email.com', '2001-07-12', 'A-', 'USA'),
    ('David', 'Brown', 20, 'A', 'History', NULL, '2002-10-30', 'B+', 'Canada'),
    ('Ryan', 'Wilson', 19, 'C', 'Mathematics', NULL, '2003-09-15', 'AB-', 'Australia'),
    ('Emma', 'Smith', 18, 'B', 'Physics', 'emma.smith@email.com', '2004-12-03', 'O-', 'UK'),
    ('Lily', 'Johnson', 20, 'A', 'Chemistry', NULL, '2002-04-27', 'A+', 'USA'),
    ('James', 'Williams', 19, 'B', 'English', NULL, '2003-08-10', 'B-', 'Canada'),
    ('Ella', 'Jones', 18, 'C', 'Computer Science', NULL, '2004-01-18', 'O+', 'Australia'),
    ('Matthew', 'Martinez', 21, 'A', 'Art', 'matthew.martinez@email.com', '2001-06-22', 'AB-', 'Mexico'),
    ('Grace', 'Brown', 20, 'B', 'Economics', NULL, '2002-09-08', 'A-', 'USA'),
    ('Jackson', 'Garcia', 19, 'C', 'Geography', NULL, '2003-12-01', 'B+', 'Canada'),
    ('Avery', 'Taylor', 18, 'A', 'Sociology', NULL, '2004-05-16', 'B-', 'Australia'),
    ('Evelyn', 'Clark', 20, 'B', 'Political Science', 'evelyn.clark@email.com', '2001-08-20', 'AB+', 'UK'),
    ('Owen', 'Wilson', 19, 'C', 'Psychology', NULL, '2003-11-25', 'O-', 'USA'),
    ('Mila', 'Thomas', 18, 'A', 'Philosophy', NULL, '2004-02-11', 'A+', 'Canada'),
    ('Logan', 'White', 21, 'B', 'Music', NULL, '2000-10-05', 'B+', 'Australia'),
    ('Elizabeth', 'Clark', 20, 'A', 'Drama', 'elizabeth.clark@email.com', '2002-03-14', 'AB+', 'USA'),
    ('Jack', 'Hill', 19, 'C', 'Foreign Languages', NULL, '2003-06-28', 'A-', 'Canada'),
    ('Ethan', 'Jones', 18, 'A', 'Ethics', NULL, '2004-08-02', 'B-', 'Australia'),
    ('Sophia', 'Rodriguez', 21, 'B', 'Health Education', NULL, '2001-05-19', 'O+', 'USA'),
    ('Chloe', 'Hill', 20, 'C', 'Physical Education', NULL, '2002-12-23', 'AB-', 'Canada');

TRUNCATE TABLE students;
DROP TABLE students;

SELECT * from students;

SELECT first_name, age, blood_group from students;
SELECT email as studentEmail from students;
SELECT * from students ORDER BY first_name ASC;
SELECT DISTINCT country from students;



-- filtering 
-- SELECT students from USA
-- SELECT students with "A" grade in physics
-- SELECT students with specific blood group (A+)
-- SELECT students from the USA or from Australia
-- SELECT students from the USA or from Australia and the age is 20
-- SELECT students with a grade of "A" OR "B" in math or physics
-- SELECT students older them 18

SELECT * from students;

SELECT * from students
    WHERE country = 'USA';

SELECT * from students
    WHERE grade = 'A' AND course = 'Physics';

SELECT * FROM students
    WHERE blood_group ='A+';

SELECT * FROM students
    WHERE country='USA' OR country='Australia';


SELECT * FROM students
      WHERE (country='USA' OR country='Australia') AND age=20; 

SELECT * FROM students
      WHERE age <> 18; 
SELECT * FROM students
      WHERE country <> 'USA' AND country <> 'Australia'; 



-- Exploring Scalar And Aggregate Functions In PostgreSQL

SELECT upper(first_name)as first_name_in_upper_case, * FROM students;
SELECT concat(first_name,' ', last_name)as full_name, * FROM students;




-- Logical Negation NOT, Understanding NULL And The Null-Coalescing Operator In PostgreSQL

SELECT * from students;

SELECT * FROM students
    WHERE NOT country='USA';

SELECT NULL=NULL;


SELECT * FROM students
    WHERE email IS NULL;

SELECT * FROM students
    WHERE email IS NOT NULL;


SELECT COALESCE(email,'Email not provided') as user_email,* from students;

SELECT * FROM students;

-- USA CANADA and UK

SELECT * FROM students
    WHERE country='USA' OR country='Canada' OR country='UK'

-- here you can see we have to type the country word continuously
-- if you have multiple or then you can use in 
-- use case of in
SELECT * FROM students
    WHERE country IN('USA','Canada','UK')

SELECT COALESCE(email,'email not provided') as email,* FROM students
    WHERE country NOT IN('USA','Canada','UK')

-- between operator
-- bye using this operator we can calculate the range

SELECT * FROM students
    WHERE age BETWEEN 19 AND 22;

-- we can also use this for date range

SELECT * FROM students
    WHERE dob BETWEEN '2003-01-01' AND '2005-01-01' ORDER BY dob ASC;


-- like operator
-- this operator is like a search option if you give it a value it will find you the alike data

SELECT * FROM students
    WHERE first_name LIKE '%am'  -- this operation indicates that in which last sentence is am' using regex 

SELECT * FROM students
    WHERE first_name LIKE '__a%' 

SELECT * FROM students
    WHERE first_name LIKE '___a'


-- ilike operator is case insensitive

SELECT * FROM students
        WHERE first_name ILIKE 'a%'


-- 18-9 Pagination With Limit Offset And Data Deletion In PostgreSQL
-- LIMIT and OFFSET


SELECT * FROM students LIMIT 5

-- if you want to skip the first 2 data then use OFFSET

SELECT * FROM students 


SELECT * FROM students LIMIT 5 OFFSET 2

-- actual pagination

SELECT * FROM students LIMIT 5 OFFSET 5*0


-- now we will see how to a record


DELETE FROM students; -- this is a dangerous command it can delete the entire record in an instant
-- use this commands carefully
DELETE FROM students
    WHERE student_id = 40



--- now we are going to see how to update a column data


UPDATE students
    SET email='default@gmail.com'
    WHERE student_id = 39

-- we can also update multiple records
UPDATE students
    SET email='default@gmail.com', age = 15
    WHERE student_id = 38

SELECT * FROM students


