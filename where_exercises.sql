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

SELECT 'WHERE Chained';

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name ='Irena' OR first_name='Vidya' OR first_name='Maya';

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name ='Irena' OR first_name='Vidya' OR first_name='Maya') AND gender = 'M';

SELECT 'Find all employees whose last name starts or ends with ''E'' — 30,723 rows.';


SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';

select'Find all employees hired in the 90s and born on Christmas — 362 rows.' as '90 and Xmas';

SELECT emp_no, first_name, last_name
FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';

SELECT 'Find all employees with a ''q'' in their last name but not ''qu'' — 547 rows.'
SELECT emp_no, first_name, last_name
FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';