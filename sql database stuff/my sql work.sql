CREATE DATABASE smartbank_db;
USE smartbank_db;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
phone_number VARCHAR(20),
email_address VARCHAR(100),
physical_address VARCHAR(150),
date_joined DATE
);

CREATE TABLE employees (
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
job_position VARCHAR(50),
branch_name VARCHAR(100),
hire_date DATE,
salary DECIMAL(10,2)
);

CREATE TABLE accounts (
account_id INT PRIMARY KEY,
customer_id INT,
account_type ENUM('Savings','Current','Fixed'),
account_balance DECIMAL(12,2) DEFAULT 0.00,
date_opened DATE,
account_status VARCHAR(20),

FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
transaction_id INT PRIMARY KEY,
account_id INT,
employee_id INT,
transaction_type ENUM('Deposit','Withdrawal','Transfer'),
amount DECIMAL(12,2),
transaction_date DATE,

FOREIGN KEY (account_id)
REFERENCES accounts(account_id),

FOREIGN KEY (employee_id)
REFERENCES employees(employee_id)
);

CREATE TABLE loans (
loan_id INT PRIMARY KEY,
customer_id INT,
loan_type VARCHAR(50),
loan_amount DECIMAL(12,2),
interest_rate DECIMAL(5,2),
issue_date DATE,
repayment_status VARCHAR(20),

FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
);

INSERT INTO customers
(first_name,last_name,phone_number,email_address,physical_address,date_joined)
VALUES
('John','Kato','0701000001','john@gmail.com','Muyenga','2024-01-10'),
('Sarah','Namusoke','0701000002','sarah@gmail.com','Entebbe','2024-02-15'),
('David','Ssenfuma','0701000003','david@gmail.com','Jinja','2024-03-20'),
('Grace','Nabirye','0701000004','grace@gmail.com','Mbarara','2024-04-12'),
('Peter','Mugisha','0701000005','peter@gmail.com','Gulu','2024-05-08');

INSERT INTO accounts
(customer_id,account_type,account_balance,date_opened,account_status)
VALUES
(1,'Savings',5000000,'2024-01-15','Active'),
(2,'Current',2500000,'2024-02-20','Active'),
(3,'Fixed',10000000,'2024-03-25','Active'),
(4,'Savings',1500000,'2024-04-15','Active'),
(5,'Current',3000000,'2024-05-10','Active');

INSERT INTO employees
(first_name,last_name,job_position,branch_name,hire_date,salary)
VALUES
('Michael','Ssemanda','Manager','Kampala','2022-01-15',3500000),
('Jane','Nakato','Teller','Entebbe','2022-06-10',1800000),
('Robert','Muwanga','Accountant','Jinja','2021-09-12',2500000),
('Alice','Nansubuga','Customer Care','Mbarara','2023-02-05',1500000),
('Henry','Kisekka','Loan Officer','Gulu','2021-12-01',2800000);

INSERT INTO transactions
(account_id,employee_id,transaction_type,amount,transaction_date)
VALUES
(1,2,'Deposit',1000000,'2025-01-05'),
(1,2,'Withdrawal',500000,'2025-01-10'),
(2,1,'Deposit',2000000,'2025-01-15'),
(3,3,'Transfer',1000000,'2025-01-18'),
(5,4,'Deposit',700000,'2025-01-20');

INSERT INTO loans
(customer_id,loan_type,loan_amount,interest_rate,issue_date,repayment_status)
VALUES
(1,'Business',15000000,12.5,'2024-06-01','Ongoing'),
(2,'Personal',5000000,10.0,'2024-07-01','Completed'),
(4,'Agriculture',8000000,11.0,'2024-08-15','Ongoing'),
(5,'Mortgage',25000000,9.5,'2024-09-01','Ongoing');






