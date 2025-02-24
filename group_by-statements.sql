-- Aggregate functions (COUNT, MIN, MAX, AVG, ROUND, SUM)
SELECT * FROM film;

SELECT COUNT(*) FROM film;

SELECT MIN(replacement_cost) FROM film;
SELECT MAX(replacement_cost) FROM film;
SELECT COUNT(*), ROUND(AVG(replacement_cost), 2), MIN(replacement_cost), MAX(replacement_cost) FROM film;

SELECT AVG(replacement_cost) FROM film;

SELECT SUM(replacement_cost) FROM film;