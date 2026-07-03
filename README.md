# Banking-system-database-project

## Project Overview

This project presents the design and implementation of a relational database system for a Banking System. The database is designed to manage structured banking data such as customers, branches, accounts, transactions, loans, and loan payments.

The main purpose of this project is to apply relational database concepts learned in the Databases and Big Data module. The implementation demonstrates database creation, table relationships, constraints, sample data insertion, data retrieval, joins, aggregation, update operations, deletion operations, and advanced queries.

## Chosen Domain

The chosen domain for this project is a Banking System.

This domain was selected because banking data contains meaningful real-world relationships. One customer can have multiple accounts, one account can have many transactions, one customer can apply for loans, and one loan can have several repayment records. These relationships make the domain suitable for relational database design.

## My Contribution

For this project, I designed and implemented the database structure using SQL. My work includes:

- Identifying the main entities required for the banking system.
- Designing the relationships between customers, branches, accounts, transactions, loans, and payments.
- Creating the database tables using SQL.
- Applying primary keys, foreign keys, NOT NULL, UNIQUE, and CHECK constraints.
- Inserting sample data into the tables.
- Writing SQL queries to demonstrate retrieval, joins, aggregation, update operations, deletion operations, and advanced analysis.
- Preparing the ER diagram, report, screenshots, and video demonstration.

## Tools Used

- MySQL Workbench
- SQL
- GitHub
- diagrams.net / draw.io
- Microsoft Word / PDF

## Database Tables

| Table Name | Purpose |
|---|---|
| Customers | Stores customer personal information |
| Branches | Stores bank branch details |
| Accounts | Stores account details linked to customers and branches |
| Transactions | Stores account transaction records |
| Loans | Stores loan details issued to customers |
| Payments | Stores repayment records for loans |

## Main Relationships

- One customer can have many accounts.
- One branch can manage many accounts.
- One account can have many transactions.
- One customer can have many loans.
- One branch can issue many loans.
- One loan can have many payments.

These relationships are implemented using primary keys and foreign keys.

## SQL Concepts Demonstrated

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK constraints
- INSERT INTO
- SELECT
- INNER JOIN
- LEFT JOIN
- GROUP BY
- COUNT
- SUM
- UPDATE
- DELETE

## Repository Contents

| File / Folder | Description |
|---|---|
| banking_system.sql | Full database implementation including table creation, constraints, and sample data |
| banking_queries.sql | SQL queries used to demonstrate database functionality |
| er_diagram.png | ER diagram showing entities and relationships |
| report.pdf | Final project report |
| screenshots/ | Screenshots of SQL execution and query outputs |
| video_link.txt | Link to the video demonstration |

## How to Run the Project

1. Open MySQL Workbench.
2. Open the file `banking_system.sql`.
3. Run the script to create the database, tables, constraints, and sample data.
4. Open the file `banking_queries.sql`.
5. Run each query to test data retrieval, joins, aggregation, update, delete, and advanced query operations.
6. Compare the outputs with the screenshots in the `screenshots` folder.

## Project Report

The project report explains the introduction, objectives, system design, ER diagram, normalization, implementation, results, challenges, conclusion, and future work.

## Video Demonstration

The video demonstration link is provided in `video_link.txt`.

## Author

Name: DHANASH HARI 
Student ID: GH1040941 
Module: Databases and Big Data
