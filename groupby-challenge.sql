SELECT COUNT(*), ROUND(AVG(replacement_cost), 2), MIN(replacement_cost), MAX(replacement_cost) FROM film;

SELECT * FROM staff;

SELECT * FROM payment;

--Excercise 1
SELECT COUNT(*), staff_id FROM payment
GROUP BY staff_id
ORDER BY staff_id DESC LIMIT 1;

--Excercise 2
SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC;

--Excercise 3
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC 
LIMIT 5;