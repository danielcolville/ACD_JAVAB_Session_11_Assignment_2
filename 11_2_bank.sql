-- *** SqlDbx Personal Edition ***
-- !!! Not licensed for commercial use beyound 90 days evaluation period !!!
-- For version limitations please check http://www.sqldbx.com/personal_edition.htm
-- Number of queries executed: 85, number of rows retrieved: 481
USE bank;

SELECT * FROM customer JOIN accounts
WHERE  account_type='savings';


-- b will go here 
SELECT customer_name,customer_address FROM customer JOIN accounts
WHERE 


UPDATE customer 
SET customer_name='ABC' WHERE customer_id JOIN accounts ON customer.customer_account=accounts.account_number AND account_number='TU001';
SELECT * FROM customer JOIN accounts ON customer.customer_account=accounts.account_number;

SELECT accounts.account_number FROM accounts WHERE accounts.account_balance>80000;

SELECT count(DISTINCT account_number) FROM accounts WHERE account_type='fixed';

SELECT * FROM customer JOIN accounts ON accounts.account_number=customer.customer_account
WHERE accounts.date_of_creation <= '08-08-20' AND accounts.date_of_creation>='08-01-20'

SELECT * FROM transactions WHERE transaction_date LIKE '28-Aug-08';

SELECT sum( CASE WHEN transactions.action='deposit'
THEN transactions.transaction_balance WHEN transactions.action='withdraw' THEN -1*transactions.transaction_balance end) AS tot
FROM transactions
WHERE transaction_date='29-Aug-08'
GROUP BY transaction_date

-- i 