/* My solution: does not include Walmart */
SELECT accounts.primary_poc, web_events.channel, web_events.occurred_at
FROM web_events
JOIN accounts
ON web_events.id = accounts.id

/* Their solution: includes Walmart */
SELECT primary_poc, web_events.occurred_at, web_events.channel, accounts.name
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id