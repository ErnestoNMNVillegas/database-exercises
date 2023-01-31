USE employees;

# 2

SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name)
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;

# Find the name of all departments currently managed by women.

SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name)
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F' ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.

SELECT title AS Title, COUNT(*) AS Total
FROM employees as e
        JOIN titles t on e.emp_no = t.emp_no
        JOIN dept_emp de on e.emp_no = de.emp_no
WHERE dept_no = 'd009'
GROUP BY title ORDER BY COUNT(*);
# Note:  Not working.  Does not match text

# Find the current salary of all current managers.

SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name), salary AS Salary
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries s
              ON e.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01' ORDER BY dept_name;


