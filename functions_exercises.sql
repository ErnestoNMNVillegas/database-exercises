use employees;

# 2

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# 3

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

# 4

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

# 5

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
  ORDER BY hire_date DESC;

# 6

SELECT emp_no, last_name, hire_date, DATEDIFF(now(), hire_date)
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
  ORDER BY DATEDIFF(now(), hire_date);






