USE employees;

# 1. Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT CONCAT(emp_no, '-', last_name) AS 101010_Matches
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# 2. Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles

SELECT title, COUNT(*) AS Aamod_Matches
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
GROUP BY title;

# 3. Find all the current department managers that are female.

SELECT last_name, emp_no
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
)
AND gender = 'F';

