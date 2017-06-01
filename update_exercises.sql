USE codeup_test_db;

SELECT 'All albums in Database' AS '';
SELECT name from albums;

SELECT 'All albums released before 1980' AS '';
SELECT name from albums where release_date <1980;

SELECT 'All albums by Michael Jackson' AS '';
SELECT name from albums where artist = 'Michael Jackson';

SELECT 'Make all the albums 10 times more popular (sales * 10)' AS '';
UPDATE albums SET sales = sales * 10;


SELECT 'Move all the albums before 1980 back to the 1800s.' AS '';
UPDATE albums SET release_date = 1800 where release_date <1980;
SELECT * from albums where release_date = 1800;

SELECT 'Change ''Michael Jackson'' to ''Peter Jackson'' ' AS '';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * from albums where artist = 'Peter Jackson';
