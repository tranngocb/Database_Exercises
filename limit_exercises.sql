use employees;

SELECT 'List the first 10 distinct last name sorted in descending order. Your result should look like this:';
SELECT DISTINCT last_name FROM employees LIMIT 10;

SELECT emp_no, first_name, last_name,hire_date,birth_date
FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25' GROUP BY birth_date ASC LIMIT 5;