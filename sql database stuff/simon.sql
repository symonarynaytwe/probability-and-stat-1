-- 1. Create the database
CREATE DATABASE DEMO;

USE DEMO;

-- 3. Create the patient table
CREATE TABLE patient (
    Pname VARCHAR(50),
    Pid INT,
    gender VARCHAR(10),
    fees INT
);

-- 4. Insert at least 4 sample patients
INSERT INTO patient (Pname, Pid, gender, fees)
VALUES
('John', 1, 'Male', 50000),
('Mary', 2, 'Female', 45000),
('Peter', 3, 'Male', 60000),
('Sarah', 4, 'Female', 55000);

-- 5. Retrieve the first 3 columns and first row
SELECT Pname, Pid, gender
FROM patient
LIMIT 1;

-- 6. Reduce all patients' fees by 1000
-- and give the new column a meaningful name
SELECT Pname, Pid, gender, fees,
       fees - 1000 AS reduced_fees
FROM patient;

-- 7. Retrieve details of male patients
SELECT *
FROM patient
WHERE gender = 'Male';

-- 8. Display column names and their data types
DESCRIBE patient;

-- 9. Retrieve all columns and rows
SELECT *
FROM patient;