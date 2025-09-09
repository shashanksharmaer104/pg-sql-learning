--Exercise 1
SELECT * FROM customer
SELECT * FROM address WHERE district LIKE 'Cal%'
SELECT * FROM city WHERE city LIKE 'Cal%'

SELECT  district, email 
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

--Exercise 2
SELECT * FROM film
SELECT * FROM actor where first_name = 'Nick'
SELECT * FROM film_actor

SELECT title, first_name, last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film.film_id = film_actor.film_id
WHERE first_name = 'Nick' 
AND last_name = 'Wahlberg';
