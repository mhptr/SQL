use swati;

CREATE TABLE students
(
RollNumber int,
StudentName varchar(225),
Age int,
Gender varchar(225),
Religion varchar(225)
);

SHOW TABLES;

#insters rows in a specified table
SELECT * FROM students;
-- INSERT INTO students(RollNumber,StudentName,Age,Gender,Religion) VALUES (1,"Devarshi",29,"M","Hindu");
-- INSERT INTO students(RollNumber,StudentName,Age,Gender,Religion) VALUES (2,"BabuBhaiya",30,"M","Hindu");
-- INSERT INTO students(RollNumber,StudentName,Age,Gender,Religion) VALUES (3,"MrDevarshi",31,"M","No religion");
-- INSERT INTO students(RollNumber,StudentName,Age,Gender,Religion) VALUES (4,"Swati",26,"F","Hindu");
-- INSERT INTO students(RollNumber,StudentName,Age,Gender,Religion) VALUES (5,"Aurat",30,"F","Hindu");
-- INSERT INTO students(RollNumber,StudentName,Age,Gender,Religion) VALUES (6,"Devarshi",29,"M","No religion");

#count the number of rows in the table
SELECT COUNT(*) FROM students; 

#add a column to the entire table
#https://www.javatpoint.com/mysql-alter-table

-- ALTER TABLE students
-- ADD Sex varchar(100) NOT NULL
-- AFTER Gender,
-- ADD Religion varchar(100) NOT NULL
-- AFTER Sex;
-- SELECT * FROM students;

-- ALTER TABLE students
--   DROP COLUMN gender;
--   
--  
-- INSERT INTO students (Rollnumber,Sex,Religion) VALUES(1,"M","not avail");
-- SELECT * FROM students;

-- DROP TABLE students;


-- get all the male students

SELECT * FROM students WHERE Gender = "M";
SELECT * FROM students WHERE Gender = "F";

-- get students of age < 30 years
SELECT * FROM students WHERE Age < 30;

-- get all where age = 30
SELECT * FROM students WHERE Age = 30;


-- https://www.javatpoint.com/mysql-where
-- get all where age is ebetween 28-30 and including 30
SELECT * FROM students WHERE (Age < 30 OR Age = 30) AND Age > 28;

-- male between 28-30 and 30
SELECT StudentName, age FROM students WHERE Gender = "M" AND (Age < 30 OR Age = 30) AND Age > 28;

-- 
-- studnets with distinct names
SELECT DISTINCT StudentName, age FROM students WHERE Gender = "M" AND (Age < 30 OR Age = 30) AND Age > 28;

-- ascending age 
SELECT * FROM students ORDER BY Age ASC;

-- order by descending
SELECT * FROM students ORDER BY RollNumber DESC;

-- group by

SELECT Religion,count(*) FROM students group by Religion;

SELECT Gender,count(*) FROM students group by Gender;

-- calculating average age of each gender

SELECT Gender,avg(Age) AS "avg_age" FROM students group by Gender;

 
 
