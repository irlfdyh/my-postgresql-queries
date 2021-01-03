-- IN operator to know the rental information of customer with id 1 and 2
SELECT
        customer_id,
        rental_id,
        return_date
FROM
        rental
WHERE
        customer_id IN (1, 2)
ORDER BY
        return_date DESC;

-- Similar queries to get information of customer with id 1 and 2, but
-- this uses the equal (=) and OR operator instead of the IN operator.
SELECT
        customer_id,
        rental_id,
        return_date
FROM
        rental
WHERE
        customer_id = 1 OR customer_id = 2
ORDER BY
        return_date DESC;

-- !NOTICE!
-- The query that uses the IN operator is shorter and more readable than the query that
-- uses equal(=) and OR operators. In addition, PostgreSQL executes the query with the
-- IN operator much faster than the same query that uses a list of OR operators.

-- Combine IN operator with the NOT operator to select rows whose values do not match the
-- values in the list.
SELECT
        customer_id,
        rental_id,
        return_date
FROM
        rental
WHERE
        customer_id NOT IN (1, 2);

-- Similar to the IN operator, the not equal(<>) and AND operators to write
-- the NOT IN operator
SELECT
        customer_id,
        rental_id,
        return_date
FROM
        rental
WHERE
        customer_id <> 1 AND customer_id <> 2;

-- PostgreSQL IN with a subquery
SELECT customer_id
FROM rental
WHERE CAST(return_date AS DATE) = '2005-05-27'
ORDER BY customer_id;

SELECT
        customer_id,
        first_name,
        last_name
FROM
        customer
WHERE
        customer_id IN (
            SELECT customer_id
            FROM rental
            WHERE CAST (return_date AS DATE) = '2005-05-27'
        )
ORDER BY customer_id;