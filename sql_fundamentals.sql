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

--ORDER BY statement
SELECT * FROM customer
ORDER BY store_id;

SELECT * FROM customer
ORDER BY store_id DESC, first_name ASC;

--LIMIT statement
SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 5

SELECT payment_id, customer_id, staff_id, amount FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 10

SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;

SELECT COUNT(title) FROM film
WHERE length <= 50

--BETWEEN operator