-- *** SqlDbx Personal Edition ***
-- !!! Not licensed for commercial use beyound 90 days evaluation period !!!
-- For version limitations please check http://www.sqldbx.com/personal_edition.htm
-- Number of queries executed: 258, number of rows retrieved: 32351

USE bank;

-- a
SELECT * FROM client JOIN account ON account.account_id = client.client_account
WHERE  account_type='savings';


-- b will go here 
SELECT client_name,client_address FROM client JOIN account ON account.account_id = client.client_account JOIN loan ON account.account_id = loan.loan_account
WHERE loan_amount>50000;

SELECT * FROM client

UPDATE client
SET client_name='ABC' WHERE client_account=20;
-- SELECT * FROM customer JOIN accounts ON customer.customer_account=accounts.account_number;


SELECT account.account_id,account.account_balance FROM account WHERE account.account_balance>80000;

SELECT count(DISTINCT account_id) FROM account WHERE account_type='fixed';



SELECT * FROM client JOIN account ON account.account_id=client.client_account
WHERE account.account_creation_date BETWEEN '08/01/20' and '08/08/20' ;

SELECT * FROM transaction WHERE transaction_date LIKE '28-Aug-08';

SELECT sum( CASE WHEN transactions.action='deposit'
THEN transactions.transaction_balance WHEN transactions.action='withdraw' THEN -1*transactions.transaction_balance end) AS tot
FROM transactions
WHERE transaction_date='29-Aug-08'
GROUP BY transaction_date;

-- i 
SELECT * FROM loan JOIN account ON account.account_id = loan.loan_account JOIN client ON client.client_account = account.account_id;
