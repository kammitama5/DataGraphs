CREATE TABLE
DROP TABLE
SELECT 
=========
statement
SELECT statement : query

In SQL, you can think of a statement as:
1. A piece of correctly written SQL code
2. A way to manipulate data stored in a database
3. A sentence
4. A way to read data stored in a database

SELECT * 
  FROM demo.orders
  
SELECT id, account_id
  FROM demo.orders 
  
SQL ignores spaces and is not case sensitive

LIMIT
==========
SELECT * 
 FROM demo.web_events_full
 LIMIT 10
 
SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15

ORDER BY
============
SELECT * 
FROM demo.orders
ORDER BY occurred_at DESC
LIMIT 1000

=====================
Write a query to return the 10 earliest orders
 in the orders table. Include the id, occurred_at, 
 and total_amt_usd.
 
SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10 

Write a query to return the top 5 orders 
in terms of largest total_amt_usd.
 Include the id, account_id, and total_amt_usd.
 
SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5

Write a query to return the bottom 20 
orders in terms of least total. 
Include the id, account_id, and total.

SELECT id, account_id, total
FROM orders
ORDER BY total 
LIMIT 20

====================
ORDER BY Multiple

SELECT account_id,
total_amt_usd 
FROM demo.orders
ORDER BY account_id, total_amt_usd DESC 
  
Write a query that returns the top 5 rows
 from orders ordered according to newest to oldest,
 but with the largest total_amt_usd for each
 date listed first for each date.
 
SELECT *
FROM orders
ORDER BY occurred DESC, total_amt_usd DESC
LIMIT 5 
 
Write a query that returns the top 10 rows
 from orders ordered according to oldest to newest,
 but with the smallest total_amt_usd for each date
 listed first for each date.
 
SELECT *
FROM orders
ORDER BY occurred_at, total_amt_usd
LIMIT 10

=======================

WHERE

SELECT * 
FROM demo.orders
WHERE account_id = 4251
ORDER BY occurred_at 
LIMIT 1000

Pull the first 5 rows 
and all columns from the orders 
table that have a dollar 
amount of gloss_amt_usd greater
 than or equal to 1000.
 
SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
LIMIT 5;

Pull the first 10 rows
 and all columns from the orders
 table that have a total_amt_usd 
 less than 500  

SELECT *
FROM orders
WHERE total_amt_usd < 500
LIMIT 10;

==========================

WHERE with Non-Numerics
(use single-quotes)

SELECT * 
FROM demo.accounts 
WHERE name = 'United Technologies'

Filter the accounts table to include
 the company name, website, 
 and the primary point of contact (primary_poc)
 for Exxon Mobil in the accounts table. 
 
SELECT name, website, primary_poc
FROM accounts
WHERE name = 'Exxon Mobil'
 