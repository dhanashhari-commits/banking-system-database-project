USE BankingSystem;
SELECT * FROM Customers;
SELECT c.full_name, a.account_id, a.account_type, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id;

SELECT b.branch_name, COUNT(a.account_id) AS total_accounts
FROM Branches b
LEFT JOIN Accounts a ON b.branch_id = a.branch_id
GROUP BY b.branch_name;

SELECT c.full_name, SUM(l.loan_amount) AS total_loan_amount
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id
GROUP BY c.full_name;



SELECT c.full_name, a.account_id, t.transaction_type, t.amount, t.transaction_date, t.description
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id;

SELECT * FROM Accounts WHERE account_id = 101;

UPDATE Accounts
SET balance = balance + 5000
WHERE account_id = 101;

SELECT * FROM Accounts WHERE account_id = 101;

SELECT * FROM Payments WHERE payment_id = 6;

DELETE FROM Payments
WHERE payment_id = 6;

SELECT * FROM Payments WHERE payment_id = 6;

SELECT c.full_name
FROM Customers c
LEFT JOIN Loans l ON c.customer_id = l.customer_id
WHERE l.loan_id IS NULL;

SELECT c.full_name, l.loan_type, l.loan_amount, p.payment_amount, p.payment_date, p.payment_method
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id
JOIN Payments p ON l.loan_id = p.loan_id;
