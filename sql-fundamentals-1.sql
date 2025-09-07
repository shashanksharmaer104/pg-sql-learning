SELECT * FROM film;

--Exerice 1
SELECT COUNT(amount) FROM payment 
WHERE amount > 5;

--Exercise 2
SELECT COUNT(first_name) FROM actor
WHERE first_name LIKE 'P%';

--Exercise 3
SELECT COUNT(DISTINCT(district)) FROM address;

--Exercise 4
SELECT DISTINCT(district) FROM address;

--Exercise 5
SELECT COUNT(*) FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

--Exercise 6
SELECT COUNT(title) FROM film
WHERE title LIKE '%Truman%';