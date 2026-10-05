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


--all female students
CREATE VIEW VIEW_ONE AS SELECT * FROM students WHERE gender = "FEMALE";

--students not offering DIT OR BSIT
CREATE VIEW VIEW_TWO AS SELECT * FROM students WHERE programme NOT IN("DIT" , "BSIT");

--Students marks increased by 5 in new column called marks_change
CREATE VIEW VIEW_THREE AS SELECT student_name, marks, marks + 5 AS increased_marks
FROM students;

--STUDENTS WHOSE NAME START WITH S
CREATE VIEW VIEW-FOUR AS SELECT * FROM students WHERE "student_name" like "S%";

--NUMBER OF STUDENTS OFFERING DIT
CREATE VIEW VIEWFIVE AS SELECT * FROM students COUNT("DIT");

--NUMBER OF STUDENTS IN CHRONOLOGICAL ORDER
CREATE VIEW VIEWSIX AS SELECT * FROM STUDENTS ORDER BY "STUDENT_NAME" ASC;

--MALE STUDENTS OFFERING BSIT
CREATE VIEW VIEWSEVEN AS SELECT * FROM STUDENTS WHERE GENDER = "MALE" AND programme = "BSIT";

--VIEW8
CREATE VIEW VIEWEIGHT AS SELECT * FROM students ORDER BY FIELD(PROGRAMME, 'BSIT', 'DIT', 'BSE'), MARKS DESC;

--MODIFYING TABLE
ALTER TABLE students ADD COLUMN NIN VARCHAR(50);

--CHANGING CAPTION
ALTER TABLE students CHANGE COLUMN STUDENT_ID 'STUDENT_IDENTIFICATION' INT;

DELETE FROM students ORDER BY 'STUDENT_IDENTIFICATION' DESC LIMIT 1;

INSERT INTO STUDENT('STUDNET_IDENTIFICATION', 'STUDENT_NAME', 'GENDER') VALUES (110, 'JOHNJAMES', 'MALE');

SELECT PROGRAM, COUNT(*) AS NUMBER_OF_STUDENTS FROM students GROUP BY PROGRAMME;