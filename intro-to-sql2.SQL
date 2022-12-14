-- Work on Your way Through SQL Bolt and Work on Your Way Through SQL Zoo

-- 1.Find the title of each film
SELECT Movies.title FROM movies;

-- 2.Find the director of each film
SELECT Movies.director FROM movies;

-- 3.Find the title and director of each film
SELECT Movies.title,Movies.director FROM movies;

-- 4.Find the title and year of each film
SELECT Movies.title,Movies.year FROM movies;

-- 5.Find all the information about each film
SELECT * FROM movies;

-- 6.Find the movie with a row id of 6 
SELECT * FROM movies WHERE id = 6;

-- 7. Find the movies released in the years between 2000 and 2010
SELECT * FROM movies WHERE year BETWEEN 2000 AND 2010;

-- 8.Find the movies not released in the years between 2000 and 2010
SELECT * FROM movies WHERE year NOT BETWEEN 2000 AND 2010;

-- 9.Find the first 5 Pixar movies and their release year
SELECT * FROM movies where id <= 5;

-- 10.Find all the Toy Story movies
SELECT * FROM movies WHERE title LIKE '%Toy Story%';

-- 11.Find all the movies directed by John Lasseter
SELECT * FROM movies WHERE director = 'John Lasseter';

-- 12.Find all the movies (and director) not directed by John Lasseter
SELECT * FROM movies WHERE director != 'John Lasseter';

-- 13.Find all the WALL-* movies
SELECT * FROM movies WHERE title LIKE '%WALL-%';

-- 14.List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director FROM movies ORDER BY director ASC;

-- 15.List the last four Pixar movies released (ordered from most recent to least) 
SELECT * FROM movies Order BY year DESC LIMIT 4;

-- 16.List the first five Pixar movies sorted alphabetically
SELECT * FROM movies Order BY title ASC LIMIT 5;

-- 17.List the next five Pixar movies sorted alphabetically
SELECT * FROM movies Order BY title ASC LIMIT 5 OFFSET 5;

-- 18.List all the Canadian cities and their populations
SELECT city, population FROM north_american_cities WHERE country = 'Canada';

-- 19.Order all the cities in the United States by their latitude from north to south 
SELECT * FROM north_american_cities WHERE country = 'United States' ORDER BY latitude ASC;

-- 20.List all the cities west of Chicago, ordered from west to east
SELECT city FROM north_american_cities WHERE longitude < -87.629798 ORDER BY longitude;

-- 21.List the two largest cities in Mexico (by population)
SELECT city FROM north_american_cities WHERE country = 'Mexico' ORDER BY population DESC LIMIT 2;

-- 22.List the third and fourth largest cities (by population) in the United States and their population
SELECT city,population FROM north_american_cities WHERE country = 'United States' ORDER BY population DESC LIMIT 2 OFFSET 2;

-- 23.Find the domestic and international sales for each movie
SELECT * FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;

-- 24.Show the sales numbers for each movie that did better internationally rather than domestically
SELECT * FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id WHERE boxoffice.international_sales > boxoffice.domestic_sales;

-- 25.List all the movies by their ratings in descending order
SELECT * FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id ORDER BY rating DESC;

-- 26.Find the list of all buildings that have employees
SELECT DISTINCT building FROM employees LEFT JOIN buildings ON buildings.building_name = employees.building;

-- 27.Find the list of all buildings and their capacity
SELECT DISTINCT building_name, capacity FROM employees JOIN buildings;

-- 28.List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT role ,building_name FROM buildings LEFT JOIN employees ON building_name = employees.building;

-- 29.Find the name and role of all employees who have not been assigned to a building
SELECT name, role FROM employees WHERE building IS NULL;

-- 30. Find the names of the buildings that hold no employees
SELECT * FROM buildings LEFT JOIN employees ON building_name = building WHERE name IS NULL ;
