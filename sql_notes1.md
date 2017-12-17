Arithmetic Operators

SELECT account_id,
		occurred_at,
		standard_qty,
		gloss_qty,
		poster_qty,
		gloss_qty + poster_qty AS nonstandard_qty
FROM demo.orders

-  new column is a derived column

Create a column that divides the standard_amt_usd
 by the standard_qty to find the unit price 
 for standard paper for each order.
 Limit the results to the first 10 orders,
 and include the id and account_id fields. 
 
SELECT id,
account_id,
standard_amt_usd / standard_qty AS unit_price
FROM orders
LIMIT 10

Write a query that finds the percentage
 of revenue that comes from poster paper 
 for each order. You will need to use only 
 the columns that end with _usd. 
 (Try to do this without using the total column). 
 Include the id and account_id fields. 
 SELECT
(poster_amt_usd / 
(standard_amt_usd + gloss_amt_usd
 + poster_amt_usd + 1)) AS percentage
FROM orders
=====================================

LIKE
- Like allows you to perform operations
  similar to using WHERE and = 
  but for cases when you might 
  not know exactly what you are 
  looking for 
  
IN 
- allows you to perform operations similar to
  using WHERE and =,
  but for more than one condition 
  
NOT
- used with IN and LIKE to select all of the rows 
  NOT LIKE or NOT IN a certain condition 
  
AND & BETWEEN
- These allow you to combine operations where 
  all combined conditions must be true 
  
OR
- This allows you to combine operations where at least
  one of the combined conditions must be true 
  
  
===============================

LIKE

SELECT * 
 FROM demo.web_events_full
 WHERE referrer_url LIKE '%google%'
 
All the companies whose names start with 'C'. 

SELECT *
FROM accounts
WHERE name LIKE 'C%'

All companies whose names contain
 the string 'one' somewhere in the name.
 
SELECT *
FROM accounts
WHERE name LIKE '%one%' 

All companies whose names end with 's'.

SELECT *
FROM accounts
WHERE name LIKE '%s'  

=====================================

IN

SELECT * 
FROM demo.accounts
WHERE name IN ('Walmart', 'Apple')

SELECT *
FROM demo.orders
WHERE account_id IN (1001, 1021)


Use the accounts table 
to find the account name,
 primary_poc, and sales_rep_id
 for Walmart, Target, and Nordstrom.

SELECT  name,
primary_poc,
sales_rep_id
FROM accounts
WHERE name in ('Walmart', 'Target','Nordstrom')

Use the web_events table to
 find all information regarding
 individuals who were contacted 
 via the channel of organic or adwords.

 SELECT *
FROM web_events
WHERE channel in ('organic', 'adwords')

=====================================

NOT 

SELECT sales_rep_id,
name
FROM demo.accounts
WHERE sales_rep_id NOT IN(321500, 321570)
ORDER BY sales_rep_id

SELECT * 
FROM demo.web.events_full
WHERE referrer_url NOT LIKE '%google%'


Use the accounts table to
 find the account name, primary poc, 
 and sales rep id for all stores
 except Walmart, Target, and Nordstrom.
 
SELECT name,
primary_poc,
sales_rep_id
FROM accounts
WHERE name NOT IN('Walmart','Target','Nordstrom')

Use the web_events table to
 find all information regarding
 individuals who were contacted
 via any method except using
 organic or adwords methods.
 
SELECT *
FROM web_events
WHERE channel NOT IN('organic','adwords') 
 
Use the accounts table to find:
All the companies whose names 
do not start with 'C'.

SELECT name
FROM accounts
WHERE name NOT LIKE 'C%'

All companies whose names do
 not contain the string 'one'
 somewhere in the name.
 
SELECT name
FROM accounts
WHERE name NOT LIKE '%one%'

All companies whose names 
do not end with 's'

SELECT name
FROM accounts
WHERE name NOT LIKE '%s'
 
 
=========================
AND and BETWEEN

SELECT * 
FROM demo.orders
ORDER BY occurred_at
 >- '2016-04-1' AND occurred_at <= '2016-10-01'
 ORDER BY occurred_at DESC
 
 Write a query that returns 
 all the orders where the
 standard_qty is over 1000, the poster_qty is 0,
 and the gloss_qty is 0.
 
SELECT *
FROM orders
WHERE standard_qty > 1000 
AND poster_qty = 0 AND gloss_qty = 0

Using the accounts table find all 
the companies whose names do not
start with 'C' and end with 's'.
 
SELECT name
FROM accounts
WHERE name NOT LIKE 'C%' AND name LIKE '%s'
 
 
Use the web_events table to 
find all information regarding
 individuals who were contacted
 via organic or adwords and started
 their account at any point in 2016
 sorted from newest to oldest.

SELECT *
FROM web_events
WHERE channel IN('organic','adwords')
AND occurred_at
 BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC

==============================

OR

SELECT account_id,
occurred_at,
standard_qty,
gloss_qty,
poster_qty,
FROM demo.orders
WHERE standard_qty = 0 
OR gloss_qty = 0
OR poster_qty = 0

COMBINATION OF OTHER LOGICAL OPERATORS

SELECT account_id,
occurred_at,
standard_qty,
gloss_qty,
poster_qty
FROM demo.orders
WHERE (standard_qty = 0 OR gloss_qty = 0
OR poster_qty = 0)
AND occurred_at >= '2016-10-01'


Find list of orders ids where
 either gloss_qty or poster_qty 
 is greater than 4000. 
 Only include the id field 
 in the resulting table.

 SELECT id 
FROM orders
WHERE gloss_qty > 4000 OR
 poster_qty > 4000

Write a query that returns 
a list of orders where 
the standard_qty is zero
 and either the gloss_qty
 or poster_qty is over 1000.

 SELECT *
FROM orders
WHERE standard_qty = 0 AND
(gloss_qty > 1000 OR poster_qty > 1000)

Find all the company names 
that start with a 'C' or 'W',
 and the primary contact 
 contains 'ana' or 'Ana',
 but it doesn't contain 'eana'.

SELECT name
FROM accounts
WHERE name LIKE 'C%' OR
 name LIKE 'W%' AND 
 (primary_poc LIKE '%ana%' OR
 primary_poc LIKE '%Ana%' AND
 primary_poc NOT LIKE '%eana%')
 
 SELECT
 FROM
 LIMIT
 ORDER BY 
 WHERE
 LIKE 
 IN
 NOT 
 AND 
 OR
 BETWEEN
 
 Moving averages allow you to smooth
 out the volatility and allow you 
 to observe the long term trend.
 
 
 
 
 