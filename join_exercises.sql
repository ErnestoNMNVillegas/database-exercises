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


# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, CONCAT(year(de.from_date), ' - ', year(de.to_date))
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE e.emp_no = 10018;
#
# SELECT e.first_name , e.last_name
# FROM employees e
#          JOIN dept_emp de on e.emp_no = de.emp_no
#          JOIN departments d on d.dept_no = de.dept_no
# WHERE d.dept_name = 'Development';