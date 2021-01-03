-- FETCH clause to select the first film sorted by titles
-- in ascending order.
SELECT
        film_id,
        title
FROM
        film
ORDER BY
        title
FETCH FIRST ROW ONLY;

-- select the five films sorted by titles.
SELECT
        film_id,
        title
FROM
        film
ORDER BY
        title
FETCH FIRST 5 ROW ONLY;

-- use offset to returns the next five films after the
-- first five films sorted by titles.
SELECT
        film_id,
        title
FROM
        film
ORDER BY
        title
OFFSET 5 ROWS
FETCH FIRST 5 ROW ONLY;