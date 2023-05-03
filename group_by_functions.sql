use employees;

#  Group By and Aggregate Functions

# Group by will combine duplicates into one value for each group
# It will consolidate rows based on a common column

SELECT last_name FROM employees GROUP BY last_name;

SELECT COUNT(first_name) FROM employees;

SELECT last_name, COUNT(first_name) FROM employees GROUP BY last_name ORDER BY last_name;

SELECT gender, COUNT(first_name) FROM employees GROUP BY gender;

SELECT MIN(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT MAX(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;

SELECT AVG(DATEDIFF(hire_date, birth_date)) / 365 FROM employees;
