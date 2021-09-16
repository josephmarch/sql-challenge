-- File of queries run for analysis purposes

-- Data Verification:
-- Queries to show the tables
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
-- Verify length of larger tables
SELECT COUNT(emp_no) FROM dept_emp;
SELECT COUNT(emp_no) FROM employees;
SELECT COUNT(emp_no) FROM salaries;

-- 1) List the following details of each employee:
-- employee number, last name, first name, sex, and salary.
SELECT emp.emp_no AS "employee number", emp.last_name AS "last name",
emp.first_name AS "first name", emp.sex, s.salary 
FROM employees AS emp
JOIN salaries AS s
ON emp.emp_no = s.emp_no;

-- 2) List first name, last name, and hire date for
-- employees who were hired in 1986.
SELECT first_name AS "first name", last_name AS "last name", hire_date AS "hire date"
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3) List the manager of each department with the
-- following information: department number, department name,
-- the manager's employee number, last name, first name
SELECT dm.dept_no AS "department number", dep.dept_name AS "department name",
dm.emp_no AS "employee number", emp.last_name AS "last name", emp.first_name AS "first name"
FROM employees AS emp
INNER JOIN dept_manager AS dm
ON dm.emp_no = emp.emp_no
INNER JOIN departments AS dep
ON dep.dept_no = dm.dept_no;

-- 4) List the department of each employee with the following
-- information: employee number, last name, first name, and department name.
SELECT emp.emp_no AS "employee number", emp.last_name AS "last name",
emp.first_name AS "first name", dep.dept_name AS "department name"
FROM employees AS emp
INNER JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
INNER JOIN departments AS dep
ON de.dept_no = dep.dept_no;

-- 5) List first name, last name, and sex for employees whose
-- first name is "Hercules" and last names begin with "B."
SELECT first_name AS "first name", last_name AS "last name", sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6) List all employees in the Sales department, including their
-- employee number, last name, first name, and department name.
SELECT emp.emp_no AS "employee number", emp.last_name AS "last name",
emp.first_name AS "first name", dept_name AS "department name"
FROM employees AS emp
JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
JOIN departments AS dep
ON dep.dept_no = de.dept_no
WHERE dept_name = 'Sales';

-- 7) List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name.
SELECT emp.emp_no AS "employee number", emp.last_name AS "last name",
emp.first_name AS "first name", dept_name AS "department name"
FROM employees AS emp
JOIN dept_emp AS de
ON emp.emp_no = de.emp_no
JOIN departments AS dep
ON dep.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8) In descending order, list the frequency count of employee last names
-- i.e., how many employees share each last name.
SELECT last_name AS "last name", COUNT(last_name) AS "frequency count"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
