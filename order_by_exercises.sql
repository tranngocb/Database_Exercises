USE employees;

SELECT '3';
SELECT emp_no, first_name, last_name
FROM employees WHERE first_name ='Irena' OR first_name='Vidya' OR first_name='Maya'
ORDER BY first_name ASC,last_name ASC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name ='Irena' OR first_name='Vidya' OR first_name='Maya') AND gender = 'M';

SELECT 'Find all employees whose last name starts or ends with ''E'' — 30,723 rows.';

SELECT '5';
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E' ORDER BY emp_no;

SELECT '6';
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E' ORDER BY emp_no DESC;

select'Find all employees hired in the 90s and born on Christmas — 362 rows.' as '90 and Xmas';
SELECT '7';
SELECT emp_no, first_name, last_name,hire_date,birth_date
FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25' ORDER BY birth_date,hire_date DESC;

SELECT 'Find all employees with a ''q'' in their last name but not ''qu'' — 547 rows.'
SELECT emp_no, first_name, last_name
FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';