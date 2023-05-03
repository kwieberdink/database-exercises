use employees;

# Functions

SELECT CONCAT(first_name,last_name) FROM employees WHERE first_name = 'Maya';

SELECT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya';

SELECT DATEDIFF(NOW(), hire_date) / 365 FROM employees LIMIT 50;

SELECT MINUTE(NOW());
SELECT SECOND(NOW());