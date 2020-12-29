
-- Select from single columns
SELECT first_name FROM customer;

-- Select from multiple columns --
SELECT
       first_name,
       last_name,
       email
FROM customer;

-- Select data from all columns
SELECT * FROM customer;

-- Select statement to return full names
-- and emails of all customers.
SELECT
       first_name || ' ' || last_name,
       email
FROM
     customer;
-- Using aliases
-- and emails of all customers.
SELECT
       first_name || ' ' || last_name AS full_name,
       email
FROM
     customer;

-- Select statement with an expression
SELECT 5 * 3;

-- Select multiple column with alias
-- with AS keyword
SELECT
       first_name,
       last_name AS surname
FROM customer;
-- without AS keyword
SELECT
       first_name,
       last_name surname
FROM customer;

/**
  column alias can also contains one or more spaces,
  just need to surround it with double quotes like this

  column_name AS "column alias"
 */