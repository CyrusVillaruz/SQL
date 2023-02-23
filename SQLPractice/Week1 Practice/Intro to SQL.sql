CREATE DATABASE MyDatabase;
use MyDatabase;

# char and varchar differ by their sizes. char is fixed and has empty spaces to
# fill in missing characters, while varchar does not have these empty spaces.
# Both types have an upper bound limit to the number of characters they can hold.
# Use varchar when column sizes vary, and char when column sizes are constant.

CREATE TABLE MyTable (
    ID int,
    Name varchar(10),
    primary key (ID)
);

INSERT INTO MyTable (ID, Name) VALUES (1, 'John');
INSERT INTO MyTable (ID, Name) VALUES (2, 'Mary');
INSERT INTO MyTable (ID, Name) VALUES (3, 'Bob');
INSERT INTO MyTable (ID, Name) VALUES (4, 'Alice');
INSERT INTO MyTable (ID, Name) VALUES (5, 'Joe');

# update name column
UPDATE MyTable SET Name = 'Joey' WHERE ID = 5;

# delete record
DELETE FROM MyTable WHERE ID = 5;

# select all records
SELECT * FROM MyTable;

SELECT * FROM MyTable WHERE Name = 'John';