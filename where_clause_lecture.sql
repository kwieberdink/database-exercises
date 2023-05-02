use employees;

SHOW TABLES;

DESCRIBE employees;

SELECT DISTINCT first_name FROM employees WHERE first_name LIKE '%sus%';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber','Dredge','Lipner','Baek');

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no <20000
    AND last_name IN ('Herner','Baek')
    OR first_name = 'Shridhar';