-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
SELECT title, count(inventory.store_id) from rental 
LEFT JOIN inventory on rental.inventory_id = inventory.inventory_id
LEFT JOIN film on inventory.film_id = film.film_id
group by film.film_id
order by count desc
limit 10
