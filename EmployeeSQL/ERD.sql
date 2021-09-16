departments
-
dept_no VARCHAR PK
dept_name VARCHAR

dept_emp
-
emp_no INTEGER FK - employees.emp_no
dept_no VARCHAR FK >- departments.dept_no

dept_manager
-
dept_no VARCHAR FK >- departments.dept_no
emp_no INTEGER FK >-< employees.emp_no

employees
-
emp_no INTEGER PK
emp_title_id VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

salaries
-
emp_no INTEGER FK - employees.emp_no
salary INTEGER

titles
-
title_id VARCHAR PK
title VARCHAR
