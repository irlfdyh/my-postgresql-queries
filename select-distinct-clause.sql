-- create table for demonstration
CREATE TABLE distinct_demo(
    id serial NOT NULL PRIMARY KEY,
    bcolor VARCHAR,
    fcolor VARCHAR
);

-- insert value into new table
INSERT INTO distinct_demo (bcolor, fcolor)
VALUES
	('red', 'red'),
	('red', 'red'),
	('red', NULL),
	(NULL, 'red'),
	('red', 'green'),
	('red', 'blue'),
	('green', 'red'),
	('green', 'blue'),
	('green', 'green'),
	('blue', 'red'),
	('blue', 'green'),
	('blue', 'blue');

-- query the data from the distinct_demo table
SELECT
        id,
        bcolor,
        fcolor
FROM
        distinct_demo;

-- select unique values in the bcolor column from
-- the table, and sorts the result se in alphabetical
-- order by using the ORDER BY clause.
SELECT
        DISTINCT bcolor
FROM
        distinct_demo
ORDER BY
        bcolor;

-- use distinct clause on multiple columns
SELECT
        DISTINCT bcolor,
        fcolor
FROM
        distinct_demo
ORDER BY
        bcolor,
        fcolor;

-- sorts the result by the bcolor and fcolor, then for each
-- group of duplicates, it keeps the first row in the returned
-- result set.
SELECT
        DISTINCT ON (bcolor) bcolor,
        fcolor
FROM
        distinct_demo
ORDER BY
        bcolor,
        fcolor;