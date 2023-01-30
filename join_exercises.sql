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

SELECT dept_name AS Title, COUNT(*) AS Total
FROM departments as d
         JOIN employees as e
              ON dept_no = emp_no
GROUP BY dept_name ORDER BY dept_name;
# Note:  Not working

# Find the current salary of all current managers.
SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name), salary AS Salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' ORDER BY dept_name;