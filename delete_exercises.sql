use codeup_test_db;

SHOW TABLES;

DESCRIBE albums;

SELECT * FROM albums;

SELECT name as Albums FROM albums WHERE release_date > 1991;

SELECT name as Albums FROM albums WHERE genre = 'disco';

SELECT name as Albums FROM albums WHERE artist = 'Whitney Houston';

# Delete Exercise

DELETE FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE artist = 'Whitney Houston';
