use mydatabase;

# The purpose of "GROUP BY" is usually used in conjunction with
# aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the result-set by one or more columns.

# count number of records in table
SELECT COUNT(*) FROM mytable;

# select maximum value of ID
SELECT MAX(id) FROM mytable;

# select all records where id is greater than 5
SELECT * FROM mytable WHERE ID >  5;

# select records where name starts with 'A'
SELECT * FROM mytable WHERE name LIKE 'A%';

# select records where name contains 'John' and id is greater than 5
SELECT * FROM mytable WHERE name LIKE '%John%' AND id > 5;

# select records where name contains 'John' and orders result by id in descending order
SELECT * FROM mytable WHERE name LIKE '%John%' ORDER BY id DESC;

# get average value of column
SELECT AVG(id) FROM mytable;