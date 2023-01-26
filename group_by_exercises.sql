USE employees;

# 2

SELECT DISTINCT title
FROM titles;

# 3

SELECT last_name
FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name;

# 4

SELECT last_name, first_name
FROM employees WHERE last_name LIKE 'E%E' GROUP BY last_name, first_name;

# 5

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

# 6

SELECT DISTINCT COUNT(*), last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

# 7
SELECT COUNT(*), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;





