-- Question 1
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

-- Question 2
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
HAVING COUNT(*) = 7;


-- Question 4
SELECT *
FROM customer
WHERE first_name = 'Willie';

-- Question 5
SELECT staff_id, COUNT(*) AS rentals_sold
FROM rental
GROUP BY staff_id
ORDER BY rentals_sold DESC
LIMIT 1;


-- Question 6
SELECT COUNT(DISTINCT district)
FROM address;


-- Question 7
SELECT film_id, COUNT(*) AS num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC
LIMIT 1;

-- Question 8
SELECT COUNT(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- Question 9
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;

-- Question 10
SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;