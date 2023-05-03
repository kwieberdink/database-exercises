use employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE
    (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
                          AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q' AND last_name NOT LIKE '%qu%';

# ORDER BY EXERCISES

# Modify your first query to order by first name. The first result should be Irena Flexer and the last result should be Vidya Awdeh.
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN ('Irena','Vidya','Maya') ORDER BY last_name, first_name;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no DESC;

# Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

# FUNCTIONS EXERCISES

# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name,last_name) FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';


# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999
    AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25
    ORDER BY hire_date DESC;


# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT first_name, last_name, hire_date, DATEDIFF(curdate(),hire_date) FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999
    AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25
    ORDER BY hire_date DESC;


