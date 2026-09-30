DROP DATABASE University;
CREATE DATABASE University;
USE University;

-- Step 1: the Table
-- It includes student table with necessary attributes, data types, and primary key
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    programme VARCHAR(50),
    year_of_study INT,
    age INT,
    marks INT,
    town VARCHAR(50)
);

--Step 2: inserting the data
--student records into the student table
INSERT INTO students values
(101, 'Sarah Nakato', 'Female', 'BSIT', 1, 19, 78, 'Mukono'),
(102, 'John Kato', 'Male', 'DIT', 2, 22, 65, 'Kampala'),
(103, 'Mary Achieng', 'Female', 'BSIT', 3, 24, 88, 'Jinja'),
(104, 'David Ouma', 'Male', 'BSE', 1, 20, 54, 'Mukono'),
(105, 'Peter Ssenyonga', 'Male', 'BSIT', 2, 23, 72, 'Kampala'),
(106, 'Grace Namusoke', 'Female', 'DIT', 1, 20, 47, 'Entebbe'),
(107, 'Brian Okello', 'Male', 'BSE', 3, 25, 91, 'Jinja'),
(108, 'Ruth Nakanwagi', 'Female', 'BSIT', 2, 21, 83, 'Mukono'),
(109, 'Samuel Mugisha', 'Male', 'DIT', 3, 24, 69, 'Kampala'),
(110, 'Esther Atim', 'Female', 'BSE', 1, 19, 76, 'Gulu');

--Part A
--All students in the table
SELECT * FROM students;
DESCRIBE students;

SELECT student_name, programme, marks FROM students;

SELECT student_name, town FROM students

--My SQL statements 
--i
SELECT * FROM students Where town = 'Kampala';

--ii
SELECT student_name, marks FROM students Where marks > 75;

--iii
SELECT student_id, student_name, gender FROM students;

--Part B : filtering records --4.students in BSIT programme
SELECT * FROM students Where programme = 'BSIT';

#All students who scored 70 +
SELECT * FROM students Where marks >= 70;
--5.students from mukono town
SELECT * FROM students Where town = 'Mukono';
--females
SELECT * FROM students 
Where gender = 'Female';

--Part C
--8
SELECT * FROM students where programme = 'BSIT' AND marks > 75;

SELECT * FROM students
where town = 'Mukono' or town = 'Kampala';

--year 1 students
SELECT * FROM students where gender = 'Female' AND year_of_study = 1;

SELECT * FROM students where marks > 59 AND marks < 81;

--students not taking BSE
SELECT * FROM students where programme NOT IN ('BSE');

--Part D
--from highest to lowest marks 
SELECT * FROM students ORDER BY marks DESC;

--from lowest to highest marks
SELECT * FROM students ORDER BY marks ASC;

--BSIT students from highest to lowest marks
SELECT * FROM students WHERE programme = 'BSIT' ORDER BY marks DESC;

--Challenge qtns
--1
SELECT * FROM students where gender = 'Female' AND programme ='BSIT' AND marks >= 80;

--2
SELECT * FROM students 
WHERE year_of_study = 2 
  AND marks > 70;

  --3
  SELECT * FROM students 
WHERE (town = 'Mukono' AND marks < 60) 
   OR (town = 'Jinja' AND marks > 80);

--reflection
--1. I found a challenge with query for finding th students who are not taking BSE

--2. I Found that my queries werent running at first, and that i had to first the database first before all them the table , then the queries next

--3. in a real world organisation such as MTN, which might want to target and provide services to differnt groups of people such ;
--MTN wants to promote a new discounted data bundle specifically for university students or young adults.
--Instead of sending the SMS to all 15+ million subscribers, MTN filters its database using conditional queries of phone numbers and customer names for the desired target group.
-- reason: because It prevents spamming subscribers who aren't interested like other corporate business accounts and saves costs on bulk messaging. 

--New execrise
SELECT DISTINCT town FROM students;

--STUDENT PERFORMED POORLY
SELECT student_name, marks, marks + 4 AS increased_marks
FROM students
WHERE marks < 50;

--rightful age
SELECT student_name, age, age-5 AS rightful_age
FROM students;

--age ranges
SELECT * FROM students where age BETWEEN 23 AND 60;

--students that dont reside in kampala of entebbe
SELECT * FROM students where town != 'Kampala' AND town != 'Entebbe';

--3 statements for the like operator
--1. student_names that start with S
SELECT * FROM students where student_name like 'S%';

--2. NAMES WITH 9 CHARACTERS
SELECT * FROM students where student_name like '__________';

--3. names with u in between
SELECT * FROM students where student_name like '%u%';

SELECT * FROM students;






