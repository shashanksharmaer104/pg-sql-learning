-- SELECT statement
SELECT * FROM actor;
SELECT first_name, last_name, email FROM customer;

-- DISTINCT statement
SELECT DISTINCT(rental_rate) FROM film;
SELECT DISTINCT rating FROM film;

-- COUNT function
SELECT COUNT(*) FROM payment;
SELECT COUNT(DISTINCT amount) FROM payment;

--WHERE statement
SELECT * FROM customer
WHERE first_name = 'Jared';

SELECT * FROM film
WHERE rental_rate > 4;

SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99
AND rating = 'R';

SELECT COUNT(*) FROM film
WHERE rating = 'R' OR rating = 'PG-13';

SELECT * FROM film
WHERE rating != 'R';

SELECT email FROM customer
WHERE first_name = 'Nancy'
AND last_name = 'Thomas';

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';