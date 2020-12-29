-- Sort customers by their first names in ascending order
SELECT
        first_name,
        last_name
FROM
        customer
ORDER BY
        first_name;

-- Sort customers by their last name column in descending order
SELECT
        first_name,
        last_name
FROM
        customer
ORDER BY
        last_name DESC;

-- Sort rows by multiple columns
SELECT
        first_name,
        last_name
FROM
        customer
ORDER BY
        first_name ASC,
        last_name DESC;

-- Sort rows by expressions
SELECT
        first_name,
        LENGTH(first_name) len
FROM
        customer
ORDER BY
        len DESC;

-- order by clause and NULL

-- Create a new table
CREATE TABLE sort_demo(
    num INT
);

-- Insert some data
INSERT INTO sort_demo(num)
VALUES (1), (2), (3), (null);

-- Query to return data from the sort_demo table
SELECT num
FROM sort_demo
ORDER BY num;

-- Query to sort null value first before other
SELECT num
FROM sort_demo
ORDER BY num NULLS FIRST;

-- Different sort values with descending order
SELECT num
FROM sort_demo
ORDER BY num DESC;

-- Reversing the descending order to make null last
SELECT num
FROM sort_demo
ORDER BY num DESC NULLS LAST;

