
-- where with the equal operator
SELECT
        last_name,
        first_name
FROM
        customer
WHERE
        first_name = 'Jamie';

-- where with the AND operator
SELECT
        last_name,
        first_name
FROM
        customer
WHERE
        first_name = 'Jamie' AND
        last_name = 'Rice';

-- where clause with the OR operator
SELECT
        first_name,
        last_name
FROM
        customer
WHERE
        last_name = 'Rodriguez' OR
        first_name = 'Adam';

-- using IN operator to match a string with any string in a list
SELECT
        first_name,
        last_name
FROM
        customer
WHERE
        first_name IN ('Ann', 'Anne', 'Annie');

-- using the WHERE clause with the LIKE operator
SELECT
        first_name,
        last_name
FROM
        customer
WHERE
        first_name LIKE 'Ann%';

-- using WHERE clause with the BETWEEN operator
SELECT
        first_name,
        LENGTH(first_name) name_length
FROM
        customer
WHERE
        first_name LIKE 'A%' AND
        LENGTH(first_name) BETWEEN 3 AND 5
ORDER BY
        name_length;

-- using WHERE clause with the not equal operator
SELECT
        first_name,
        last_name
FROM
        customer
WHERE
        first_name LIKE 'Bra%' AND
-- the '<>' symbols is similar to '!='
        last_name <> 'Motley';