use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.

# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' OR 'Maya';

# SELECT * FROM albums WHERE artist = 'The Beatles' OR release_date < 1974;


# Find all employees whose last name starts with 'E' — 7,330 rows.

SELECT * FROM employees WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.

SELECT * FROM employees WHERE last_name LIKE '%q%';



