-- 🔹 View all data
SELECT *
FROM moviesdb.movies;

-- 🔹 Select specific columns
SELECT title, industry
FROM moviesdb.movies;

-- 🔹 Get unique industries
SELECT DISTINCT industry
FROM moviesdb.movies;

-- 🔹 Count of unique industries
SELECT COUNT(DISTINCT industry) AS count
FROM moviesdb.movies;

-- 🔹 Movies released after 2021
SELECT *
FROM moviesdb.movies
WHERE release_year > 2021;

-- 🔹 List all column names of the table
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'moviesdb'
  AND TABLE_NAME = 'movies';

-- 🔹 Comparison Operators

-- IMDb rating greater than 8.5
SELECT *
FROM moviesdb.movies
WHERE imdb_rating > 8.5;

-- Released before 2000
SELECT *
FROM moviesdb.movies
WHERE release_year < 2000;

-- Studio is 'Paramount'
SELECT *
FROM moviesdb.movies
WHERE studio = 'Paramount';

-- IMDb rating less than or equal to 6
SELECT *
FROM moviesdb.movies
WHERE imdb_rating <= 6;

-- Industry not equal to 'Hollywood'
SELECT *
FROM moviesdb.movies
WHERE industry != 'Hollywood';

-- Released in 2020 or later
SELECT *
FROM moviesdb.movies
WHERE release_year >= 2020;

-- 🔹 BETWEEN Operator

-- Released between 2010 and 2020
SELECT *
FROM moviesdb.movies
WHERE release_year BETWEEN 2010 AND 2020;

-- IMDb rating between 7.0 and 9.0
SELECT *
FROM moviesdb.movies
WHERE imdb_rating BETWEEN 7 AND 9;

-- 🔹 LIKE Operator

-- Titles starting with 'The'
SELECT *
FROM moviesdb.movies
WHERE title LIKE 'The%';

-- Titles containing 'Love'
SELECT *
FROM moviesdb.movies
WHERE title LIKE '%Love%';

-- Studios ending with 'Pictures'
SELECT *
FROM moviesdb.movies
WHERE studio LIKE '%Pictures';

-- 🔹 IN Operator

-- Released in 2015, 2017, or 2020
SELECT *
FROM moviesdb.movies
WHERE release_year IN (2015, 2017, 2020);

-- Industry is 'Bollywood', 'Tollywood', or 'Hollywood'
SELECT *
FROM moviesdb.movies
WHERE industry IN ('Bollywood', 'Tollywood', 'Hollywood');


/*
🔹 ORDER BY (Ascending and Descending)
*/

-- 1. List all movies sorted by IMDb rating in ascending order.
SELECT *
FROM moviesdb.movies
ORDER BY imdb_rating;

-- 2. Display movies released after 2010, ordered by release year ascending.
SELECT *
FROM moviesdb.movies
WHERE release_year > 2010
ORDER BY release_year;

-- 3. Show movies from 'Bollywood' ordered by title alphabetically.
SELECT *
FROM moviesdb.movies
WHERE industry = 'Bollywood'
ORDER BY title;

