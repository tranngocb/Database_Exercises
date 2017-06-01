USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'after 1991';
SELECT release_date, name FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre disco' AS DISCO;
SELECT genre, name FROM albums WHERE genre ='Disco';

SELECT 'Albums by ''Whitney Houston';
SELECT name, artist FROM albums WHERE artist LIKE '%Whitney%';

SELECT 'DELETE Albums released after 1991' AS 'after 1991';
 DELETE FROM albums WHERE release_date > 1991;

SELECT 'DELETE Albums with the genre disco' AS DISCO;
DELETE FROM albums WHERE genre ='Disco';

SELECT 'DELETE Albums by ''Whitney Houston';
DELETE FROM albums WHERE artist LIKE '%Whitney%';