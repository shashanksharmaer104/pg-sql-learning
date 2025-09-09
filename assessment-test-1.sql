--Exercise 1
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount)>110;

--Exercise 2
SELECT COUNT(*)
FROM film
WHERE title LIKE 'J%'

--Exercise 3
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'E%' and address_id < 500
ORDER BY address_id DESC
LIMIT 1;
