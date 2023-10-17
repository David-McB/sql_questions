USE sakila;
SELECT * FROM actor;

-- Question 1
SELECT first_name, last_name FROM actor;

-- Question 2
SELECT last_name FROM actor
WHERE first_name = 'John';

-- Question 3
SELECT first_name, last_name FROM actor
WHERE last_name = 'Neeson';

-- Question 4
SELECT first_name, last_name FROM actor
WHERE actor_id % 10 = 0;

-- Question 5
SELECT description FROM film
WHERE film_id = 100;

-- Question 6
SELECT title FROM film
WHERE rating = 'R';

-- Question 7 
SELECT title FROM film
WHERE rating != 'R';

-- Question 8
SELECT title, length FROM film
ORDER BY length
LIMIT 10;

-- Question 9
SELECT title, length FROM film
ORDER BY length DESC;

-- Question 10
SELECT title FROM film
WHERE special_features LIKE '%Deleted Scenes%';

-- Question 11
SELECT last_name, COUNT(last_name) AS unique_last_name FROM actor
GROUP BY last_name
HAVING unique_last_name = 1;

-- Question 12
SELECT last_name, COUNT(last_name) AS unique_last_name FROM actor
GROUP BY last_name
HAVING unique_last_name > 1
ORDER BY unique_last_name DESC;

-- Question 13
SELECT film_actor.actor_id, COUNT(film_actor.actor_id) AS actor_count, actor.first_name, actor.last_name FROM film_actor
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
GROUP BY actor_id
ORDER BY actor_count DESC
LIMIT 1;

-- Question 14
SELECT rental.inventory_id, rental.return_date,
inventory.film_id, film.film_id, film.title
FROM inventory RIGHT JOIN rental
ON inventory.inventory_id = rental.inventory_id
INNER JOIN film ON film.film_id = inventory.film_id
WHERE film.film_id = 1 AND return_date IS NOT NULL
ORDER BY return_date
LIMIT 1;

-- Question 15
SELECT AVG(length) AS film_average_runtime FROM film;

-- Question 16
SELECT category.name, ROUND(AVG(film.length), 2) AS average_category_length
FROM film_category INNER JOIN category
ON film_category.category_id = category.category_id
INNER JOIN film
ON film_category.film_id = film.film_id
GROUP BY category.name;

-- Question 17
SELECT title FROM film WHERE description LIKE '%Robot%';

-- Question 18
SELECT COUNT(release_year) AS 'films_released_in_2010' FROM film WHERE release_year = 2010;

-- Question 19
SELECT film.title AS 'Horror Movies'
FROM film_category INNER JOIN category
ON film_category.category_id = category.category_id
INNER JOIN film
ON film_category.film_id = film.film_id
WHERE category.name = 'Horror';

-- Question 20
SELECT first_name, last_name FROM staff
WHERE staff_id = 2;

-- Question 21
SELECT film.title FROM film_actor
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film 
ON film.film_id = film_actor.film_id
WHERE actor.first_name = 'Fred' AND actor.last_name = 'Costner';

-- Question 22
SELECT COUNT(DISTINCT country) AS unique_countries FROM country;

-- Question 23
SELECT name FROM language
ORDER BY name DESC;

-- Question 24
SELECT first_name FROM actor
WHERE last_name LIKE '%son'
ORDER BY first_name;

-- Question 25
SELECT category.name, COUNT(category.category_id) AS category_count from film_category
INNER JOIN category
ON film_category.category_id = category.category_id
GROUP BY category.name
ORDER BY category_count DESC
LIMIT 1;

