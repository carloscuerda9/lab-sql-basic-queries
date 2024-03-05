USE sakila;

-- Muestra todas las tablas disponibles en la base de datos Sakila.
SHOW TABLES;

-- Recupera todos los datos de las tablas actor, film y customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Títulos de todas las películas de la tabla film.
SELECT title FROM film;

-- Lista de idiomas utilizados en las películas, con la columna renombrada como "language" de la tabla language.
SELECT name AS language FROM language;

--  Lista de nombres de pila de todos los empleados de la tabla staff.
SELECT first_name FROM staff;

-- Recupera años de lanzamiento únicos.
 SELECT DISTINCT release_year FROM film;
 
--  Determina el número de tiendas que tiene la empresa.
 SELECT COUNT(*) AS number_of_stores FROM store;
 
-- Determina el número de empleados que tiene la empresa.
 SELECT COUNT(*) AS number_of_employees FROM staff;
 
-- Determina cuántas películas están disponibles para alquilar y cuántas se han alquilado.
SELECT
  (SELECT COUNT(*) FROM film) AS total_films,
  (SELECT COUNT(*) FROM rental) AS rented_films;
  
-- Determina el número de apellidos distintos de los actores en la base de datos.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- las 10 películas más largas
SELECT * 
FROM film ORDER BY length DESC LIMIT 10;

-- los actores con el nombre "SCARLETT".
SELECT * 
FROM actor WHERE first_name = 'SCARLETT';

-- Las películas que tienen "ARMAGEDDON" en su título y tienen una duración superior a 100 minutos.
SELECT * 
FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- el número de películas que incluyen contenido "Behind the Scenes".
SELECT COUNT(*) FROM film WHERE special_features LIKE '%Behind the Scenes%';






 

 
 -- 





