CREATE DATABASE TrainingCentreDB;

USE TrainingCentreDB;

CREATE TABLE Trainees (
    trainee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    course VARCHAR(50),
    age INT,
    fees DECIMAL(10,2)
)

INSERT INTO Trainees
(trainee_id,first_name,last_name,course,age,fees)
VALUES
(101,'Arinaitwe','Simpson','BSIT',18,3400000),
(102,'Obong','David', 'Nursing',22,3450000),
(103,'Nambi','Sarah','Law',21,3450000),
(104,'Kiviri','Brian','BSIT',22,3400000),
(105,'Berako','Bridget','Nursing',18, 3450000),
(106,'Johns','Norman','Law',21,3450000);

--adding email column
ALTER table Trainees add column email VARCHAR(100);

SELECT * FROM Trainees;

--allowing 1st name to allow up to 100 characters
ALTER table trainees MODIFY column first_name VARCHAR(100);

SELECT * FROM Trainees;

--renaming email to email_address column
ALTER table Trainees rename column email to email_address;

SELECT *FROM Trainees;

--adding phone after last_name
ALTER table Trainees add column phone INT after last_name;

SELECT *FROM trainees;

--adding trainee_id as the primary key
ALTER TABLE trainees add Primary key(trainee_id);

SELECT *FROM trainees;

--change of course for sarah
UPDATE trainees SET COURSE='BSIT' WHERE trainee_id=103;

SELECT *FROM trainees;

--increasing the fees of nursing trainees by 100,000 
UPDATE trainees SET fees = fees + 100000 WHERE course = 'Nursing';
SELECT *FROM trainees;

--Delecting one trainee using thier trainee_id
DELETE FROM trainees WHERE trainee_id = 106;
SELECT *FROM trainees;

--TASK 4
--total number of trainees
SELECT COUNT(*) from trainees;

--total number of fees paid
SELECT SUM(fees) FROM trainees;

--Average fees
SELECT AVG(fees) FROM trainees;

--Highest fees
SELECT MAX(fees) FROM trainees;

--lowest fees
SELECT MIN(fees) FROM trainees;

--in one query
SELECT COUNT(*), SUM(fees), AVG(fees), MIN(fees), MAX(fees) FROM trainees;

--Task 5
SELECT * FROM trainees ORDER BY fees DESC;
SELECT *FROM trainees;

--all trainees in alphabetical order by first_name
SELECT * FROM trainees ORDER BY first_name ASC;
SELECT * FROM trainees;

--Challenge question
SELECT * FROM trainees ORDER BY course ASC, fees DESC;
SELECT * FROM trainees;
