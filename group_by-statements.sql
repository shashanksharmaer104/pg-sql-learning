-- Aggregate functions (COUNT, MIN, MAX, AVG, ROUND, SUM)
SELECT * FROM film;

SELECT COUNT(*) FROM film;

SELECT MIN(replacement_cost) FROM film;
SELECT MAX(replacement_cost) FROM film;
SELECT COUNT(*), ROUND(AVG(replacement_cost), 2), MIN(replacement_cost), MAX(replacement_cost) FROM film;

SELECT AVG(replacement_cost) FROM film;

SELECT SUM(replacement_cost) FROM film;

-- GROUP BY statement
SELECT * FROM payment;

SELECT customer_id FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id, staff_id

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC

SELECT * FROM payment

SELECT staff_id, COUNT(*) 
FROM payment
GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost), 3)
FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- HAVING clause
SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT customer_id, COUNT(customer_id)
FROM payment
GROUP BY customer_id
HAVING COUNT(customer_id) >= 40;

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;