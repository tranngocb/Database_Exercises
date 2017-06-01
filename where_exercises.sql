USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name,hire_date FROM employees WHERE hire_date LIKE '199%';

SELECT 'Employees born on Christmas — 842 rows.';
SELECT emp_no, first_name, last_name, birth_date FROM employees WHERE birth_date LIKE '%12-25';

SELECT 'Employees with a ''q'' in their last name — 1,873 rows.';
SELECT emp_no, first_name, last_name, birth_date FROM employees WHERE last_name LIKE '%q%';



