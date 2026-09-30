CREATE DATABASE smartbank_db;
USE smartbank_db;

CREATE TABLE customers;
customer_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
phone_number VARCHAR(20),
email_address VARCHAR(100),
physical_address VARCHAR(150),
date_joined DATE
);

USE smartbank_db;
SELECT * FROM customers;