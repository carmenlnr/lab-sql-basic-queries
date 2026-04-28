USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film; 

SELECT name AS language 
FROM language;

SELECT first_name FROM staff;

SELECT DISTINCT release_year 
FROM film
ORDER BY release_year;

SELECT COUNT(store_id) AS number_of_stores 
FROM store;

SELECT COUNT(staff_id) AS number_of_employees 
FROM staff;

SELECT COUNT(film_id) AS films_available 
FROM film;

SELECT COUNT(DISTINCT film_id) AS films_rented 
FROM inventory
WHERE inventory_id IN (SELECT inventory_id FROM rental);

SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * 
FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length 
FROM film
WHERE title LIKE '%ARMAGEDDON%'
 AND length > 100;

SELECT COUNT(*) AS behind_the_scenes 
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

