USE codeup_test_db;
SELECT 'The name of all albums by Pink Floyd.' AS 'Info';

SELECT name from albums where artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'YEAR';

SELECT release_date from albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'The genre for Nevermind' AS 'genre';
SELECT genre FROM albums WHERE name ='Nevermind';

SELECT 'Which albums were released in the 1990.';
SELECT name FROM albums where release_date = 1990;
SELECT 'Which albums had less than 20 million certified sales';
SELECT name FROM albums WHERE sales <20;
SELECT 'All the albums in the rock genre. Is this all the rock albums in the table?';
SELECT name,genre FROM albums WHERE genre LIKE '%rock%';
