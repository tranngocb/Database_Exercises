Use employees;

SELECT DISTINCT title from titles;
SELECT DISTINCT title from titles ORDER BY title ASC;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name;

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%E' GROUP BY first_name,last_name;

SELECT DISTINCT last_name
FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';

SELECT last_name, first_name FROM employees GROUP BY last_name;