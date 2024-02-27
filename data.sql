-- Active: 1708872227409@@127.0.0.1@5432@management

SHOW timezone;

SELECT now();


CREATE TABLE timeZ (ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);


-- now insert time data

INSERT INTO timeZ(ts,tsz) VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00')


SELECT now(); -- its gives us time with timezone


-- to see current date

SELECT CURRENT_DATE;

-- only select date from timezone with stamp using casting (it will only work with timestamp)

SELECT now()::date;
SELECT now()::time;

-- to formate time

SELECT to_char(now(),'dd/mm/yyyy')


-- to check date interval use keyword interval
SELECT CURRENT_DATE -INTERVAL '1 year';

-- suppose you are give a date and now you want to calculate age

SELECT age( CURRENT_DATE ,'2000-03-10')

SELECT *, age(CURRENT_DATE,dob) FROM students;

-- if you want to extract year from date using extract function

SELECT extract(YEAR FROM '2024-01-12'::date)

SELECT extract(MONTH FROM '2024-01-12'::date)