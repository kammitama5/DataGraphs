/* select title, release year from films where films aer french and spanish and released in the 90s */
SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')

/* where gross > 2 mill*/
SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')
AND (gross > 2000000)

/*BETWEEN is INCLUSIVE*/
/* Select title and release year of films that are spanish or french with budgets of more than 100 mill*/
SELECT title, release_year
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
AND (budget > 100000000) AND (language = 'Spanish' or language = 'French')

/* IN for specifying multiple values */
/* Get title and language of films that are in English, Spanish and French */
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French') 

/* Select title and certification from films where rating is either NC-17 or R */
SELECT title, certification
FROM films
WHERE certification IN ('NC-17', 'R') 

/* IS NULL, IS NOT NULL */
SELECT name
FROM people
WHERE deathdate IS NULL

/* % will match zero, one or many characters in text */
/* _ will match a single character */
/* NOT LIKE will match records taht doesn't match pattern specified */

/* names begin with B */
SELECT name
FROM people
WHERE name LIKE 'B%'

/* names have r as second letter */
SELECT name
FROM people
WHERE name LIKE '_r%'

/* names don't start with an A */
SELECT name
FROM people
WHERE name NOT LIKE 'A%'

/* AGGREGATE FUNCTIONS*/

/* AVG(x) gives avg of that column, x */
/* MAX is highest */
/* SUM gives sum of numeric values in column */

/*Get average duration of films*/
SELECT AVG(duration)
FROM films

/* Find avg gross of films that start with A */
SELECT AVG(gross)
FROM films
WHERE title LIKE 'A%'

/* Get title and net profit (ie gross - budget) for all films */
SELECT title,
gross - budget AS net_profit
FROM films

/* Get title and duration for all films, changing minutes to hours*/
SELECT title, (duration / 60.0) AS duration_hours
FROM films

/* aliasing */
SELECT ((COUNT (deathdate) * 100.0) / COUNT(*)) AS
percentage_dead
FROM people

/* Get the number of years between the newest film and oldest film. Alias as difference*/
SELECT (MAX(release_year) - MIN(release_year)) AS difference
FROM films

/* number of decades */
SELECT ((MAX(release_year) - MIN(release_year)) / 10) AS number_of_decades
FROM films

/* Sort names alphabetically */
SELECT name
FROM people
ORDER BY name ASC

/* Get title of films released in 2000 or 2012, in order they were released*/
SELECT title
FROM films
WHERE (release_year = 2000) or (release_year = 2012)
ORDER BY release_year

/* All details for films except those released in 2015, ordered by duration */
SELECT *
FROM films
WHERE NOT (release_year) = 2015
ORDER BY duration

/* Get title and gross earnings for movies which begin with letter M and sort alphabetically */
SELECT title, gross
FROM films
WHERE title LIKE 'M%'
ORDER BY title

/* Get imdb score and film id for every film sorted from highest to lowest */
SELECT imdb_score, film_id
FROM reviews
ORDER BY imdb_score DESC

/* sort by multiple will sort by first, then second, etc */

/* Get birth date and name of people in people table, order by birthdate and alphabetically by name*/
SELECT birthdate, name
FROM people
ORDER BY birthdate, people ASC

/* Group by */

/* Get the release year and count of films released in each year*/
SELECT release_year, COUNT(title)
FROM films
GROUP BY release_year

/* Get the imdb score and count of film reviews grouped by imdb score in the reviews table */
SELECT imdb_score, COUNT(num_votes)
FROM reviews
GROUP BY imdb_score

/* Get the language and total gross amount films in each language */
SELECT language, SUM(gross)
from films
GROUP BY language

/* Get the country and total budget spent making movies in each country */
SELECT country, SUM(budget)
from films
GROUP BY country

/* Get the release year, country, and highest budget spent making a film for reach year, each country
. Sort your results by the release year and country */
SELECT release_year, country, MAX(budget)
from films
GROUP BY release_year, country
ORDER BY release_year, country

/* Having */
/* Aggregate functions can't be used in WHERE clauses. Use Having */

/* How many different years were more than 200 movies released? */
SELECT release_year
FROM films
GROUP by release_year
HAVING COUNT(title) > 200;

/* Write a query that returns the average budget and avg gross earnings for films in each year 
   after 1990 if the avg budget is greater than 60 mill). Sort by gross earnings highest to lowest
*/
SELECT release_year, AVG(budget) avg_budget, AVG(gross) avg_gross
FROM films
GROUP BY release_year
HAVING (release_year > 1990) AND AVG(budget) > 60000000
ORDER BY AVG(gross) DESC

/* Select country, avg budget, average gross from films table 
Group by country where count title > 10 order by country limit 5 */
-- select country, average budget, average gross
-- select country, average budget, average gross
SELECT country, AVG(budget) avg_budget, AVG(gross) avg_gross
-- from the films table
FROM films
-- group by country 
GROUP BY country
-- where the country has a title count greater than 10
HAVING COUNT(title) > 10
-- order by country
ORDER BY country
-- limit to only show 5 results
LIMIT 5






















