--AS clause
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

--INNER JOIN
SELECT payment_id, payment.customer_id, first_name, last_name, email
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

--OUTER JOIN
