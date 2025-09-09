--INNER JOIN (JOIN)
SELECT payment_id, payment.customer_id, first_name, last_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

--FULL OUTER JOIN
SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE payment.payment_id is NULL
OR customer.customer_id is NULL;

--LEFT OUTER JOIN
select * from film;
select * from inventory;

SELECT film.film_id, title, inventory.inventory_id, store_id
FROM film
LEFT OUTER JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id is NULL
