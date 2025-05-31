SELECT release_year, COUNT(*) AS movie_count
FROM movies
GROUP BY release_year
HAVING movie_count > 2
ORDER BY movie_count DESC;



-- Above syntax is exactly similar in oracle and mysql.

-- FROM --> WHERE --> GROUP BY --> HAVING --> ORDER BY


SELECT *
FROM MOVIES;

SELECT *
FROM movie_actor;