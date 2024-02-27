-- Active: 1708872227409@@127.0.0.1@5432@management

-- 19-2 Grouping And Filtering Data With GROUP BY And HAVING

-- if you want the data by country wise you can use group by (you can do this in many ways like by blood_group by grades etc)

SELECT country,count(*), avg(age) FROM students 
    GROUP BY country;


-- Filter Groups using HAVING to show ony countries with average age above 18

SELECT country,count(*), avg(age) FROM students 
    GROUP BY country
    HAVING avg(age) > 18;


-- count students born in each year

SELECT extract(YEAR FROM dob) as birth_year, count(*) 
    FROM students
    GROUP BY birth_year

SELECT * FROM students




