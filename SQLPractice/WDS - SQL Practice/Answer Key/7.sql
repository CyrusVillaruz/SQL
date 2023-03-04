/* This is the query used to get the id */
/*
  SELECT * FROM albums where release_year IS NULL;
*/

UPDATE albums
SET release_year = 1986
WHERE id = 4;

'%' specifies varying lengths
    "%Mary" means any string that ends with Mary
    "MARY%" means any string that starts with MARY
    "%MARY%" means any string that contains MARY