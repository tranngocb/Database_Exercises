USE employees;


SELECT 'Functions';
SELECT count(*),gender
FROM employees
WHERE first_name ='Irena' OR first_name='Vidya' OR first_name='Maya' GROUP BY gender;

SELECT emp_no, CONCAT(first_name,'   ', last_name) AS 'Full Name....'
FROM employees
WHERE last_name LIKE 'E%E' ORDER BY last_name;

SELECT '5';
SELECT floor(datediff(now(),hire_date)/365),hire_date
FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';

SELECT emp_no, COUNT(first_name),first_name, COUNT(last_name),last_name
FROM employees
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%' GROUP BY first_name,last_name ORDER BY first_name;

SELECT concat(first_name, ' ',last_name)AS 'Full Name', count(*)
FROM employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY concat(first_name, ' ',last_name) ORDER BY count(*) DESC;

SELECT concat(emp_no,' - ',last_name,' ',first_name)AS 'Full Name', birth_date AS 'DOB'
FROM employees GROUP BY birth_date LIMIT 50;

INSERT INTO users (name, email, role_id) VALUES
  ('Bic', 'bob@example.com', 2),
  ('Jean', 'joe@example.com', 2),
  ('Liem', 'sally@example.com', 2),
  ('Mai', 'adam@example.com', NULL);

SELECT users.name AS user_name, roles.name AS role_name,count(*)
FROM users JOIN roles ON users.role_id = roles.id GROUP BY role_name;
#Using the example in theASsociative Table Joins section as a guide,
# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;

#Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager name'
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no WHERE dm.to_date = '9999-01-01' AND e.gender='F' ORDER BY dept_name;
#Find the current titles of employees currently working in the Customer Service department.

SELECT t.title,count(t.title),d.dept_name
FROM employees AS e
  JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
  JOIN titles AS t ON t.emp_no=e.emp_no
  JOIN departments AS d ON d.dept_no=de.dept_no WHERE d.dept_name= 'Customer Service'
  AND t.to_date = '9999-01-01' and de.to_date >now() GROUP BY title;

#Find the current salary of all current managers.
SELECT DISTINCT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name,MAX(sal.salary)
FROM employees AS e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN salaries AS sal
  ON e.emp_no = sal.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
  WHERE dm.to_date = '9999-01-01'  GROUP BY full_name ORDER BY dept_name ;
# Bonus Find the names of all current employees,
# their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name,de.emp_no
FROM employees AS e
  JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
where de.emp_no IN (
SELECT dm.emp_no
FROM dept_manager AS dm
)ORDER BY dept_name;