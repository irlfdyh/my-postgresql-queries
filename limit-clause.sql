-- Simple LIMIT clause
SELECT
        film_id,
        title,
        release_year
FROM
        film
ORDER BY
        film_id
LIMIT 5;

-- LIMIT with offset
SELECT
        film_id,
        title,
        release_year
FROM
        film
ORDER BY
        film_id
LIMIT 4 OFFSET 3;

-- LIMIT OFFSET to get top / bottom N rows
SELECT
        film_id,
        title,
        rental_rate
FROM
        film
ORDER BY
        rental_rate DESC
LIMIT 10;
