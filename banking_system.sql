DROP DATABASE IF EXISTS BankingSystem;
CREATE DATABASE BankingSystem;
USE BankingSystem;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(200),
    date_of_birth DATE
);
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    branch_manager VARCHAR(100)
);
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    branch_id INT NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    balance DECIMAL(12,2) CHECK (balance >= 0),
    opening_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT NOT NULL,
    transaction_type VARCHAR(30) NOT NULL,
    amount DECIMAL(12,2) CHECK (amount > 0),
    transaction_date DATE NOT NULL,
    description VARCHAR(200),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    branch_id INT NOT NULL,
    loan_type VARCHAR(50) NOT NULL,
    loan_amount DECIMAL(12,2) CHECK (loan_amount > 0),
    interest_rate DECIMAL(5,2) CHECK (interest_rate > 0),
    start_date DATE NOT NULL,
    loan_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    loan_id INT NOT NULL,
    payment_amount DECIMAL(12,2) CHECK (payment_amount > 0),
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50),
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);
INSERT INTO Customers VALUES
(1, 'Arjun Nair', '9876543210', 'arjun.nair@email.com', 'Kochi, Kerala', '2001-05-12'),
(2, 'Meera Thomas', '9876543211', 'meera.thomas@email.com', 'Trivandrum, Kerala', '2002-01-20'),
(3, 'Rahul Menon', '9876543212', 'rahul.menon@email.com', 'Bangalore, Karnataka', '2000-09-15'),
(4, 'Sara Joseph', '9876543213', 'sara.joseph@email.com', 'Chennai, Tamil Nadu', '1999-11-10'),
(5, 'Vishnu Raj', '9876543214', 'vishnu.raj@email.com', 'Mumbai, Maharashtra', '2003-03-22'),
(6, 'Ananya Kumar', '9876543215', 'ananya.kumar@email.com', 'Delhi, India', '2001-12-05');

INSERT INTO Branches VALUES
(1, 'Kochi Main Branch', 'Kochi', 'Ramesh Kumar'),
(2, 'Bangalore City Branch', 'Bangalore', 'Anita Sharma'),
(3, 'Chennai Central Branch', 'Chennai', 'Prakash Iyer');

INSERT INTO Accounts VALUES
(101, 1, 1, 'Savings', 20000.00, '2024-01-10', 'Active'),
(102, 2, 1, 'Current', 35000.00, '2024-02-15', 'Active'),
(103, 3, 2, 'Savings', 15000.00, '2024-03-20', 'Active'),
(104, 4, 3, 'Savings', 28000.00, '2024-04-18', 'Active'),
(105, 5, 2, 'Current', 50000.00, '2024-05-05', 'Active'),
(106, 6, 3, 'Savings', 12000.00, '2024-06-12', 'Active');

INSERT INTO Transactions VALUES
(1001, 101, 'Deposit', 5000.00, '2024-07-01', 'Cash deposit'),
(1002, 101, 'Withdrawal', 2000.00, '2024-07-03', 'ATM withdrawal'),
(1003, 102, 'Deposit', 10000.00, '2024-07-05', 'Salary deposit'),
(1004, 103, 'Transfer', 3000.00, '2024-07-07', 'Online transfer'),
(1005, 104, 'Deposit', 7000.00, '2024-07-09', 'Cash deposit'),
(1006, 105, 'Withdrawal', 4000.00, '2024-07-10', 'ATM withdrawal'),
(1007, 106, 'Deposit', 6000.00, '2024-07-12', 'Online deposit'),
(1008, 102, 'Transfer', 2500.00, '2024-07-13', 'UPI transfer'),
(1009, 103, 'Deposit', 8000.00, '2024-07-15', 'Cheque deposit'),
(1010, 105, 'Transfer', 5000.00, '2024-07-18', 'Net banking transfer');

INSERT INTO Loans VALUES
(201, 1, 1, 'Education Loan', 150000.00, 8.50, '2024-02-01', 'Active'),
(202, 2, 1, 'Personal Loan', 100000.00, 10.00, '2024-03-10', 'Active'),
(203, 3, 2, 'Vehicle Loan', 250000.00, 9.25, '2024-04-15', 'Active'),
(204, 5, 2, 'Home Loan', 1200000.00, 7.90, '2024-05-20', 'Active');

INSERT INTO Payments VALUES
(1, 201, 10000.00, '2024-03-01', 'Bank Transfer'),
(2, 201, 10000.00, '2024-04-01', 'Bank Transfer'),
(3, 202, 8000.00, '2024-04-10', 'UPI'),
(4, 203, 15000.00, '2024-05-15', 'Cheque'),
(5, 204, 30000.00, '2024-06-20', 'Bank Transfer'),
(6, 204, 30000.00, '2024-07-20', 'Bank Transfer');

SHOW TABLES;
SELECT * FROM Customers;
SELECT * FROM Branches;
SELECT * FROM Accounts;
SELECT * FROM Transactions;
SELECT * FROM Loans;
SELECT * FROM Payments;
