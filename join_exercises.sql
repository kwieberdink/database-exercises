use employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
    FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e on e.emp_no = dm.emp_no
    WHERE to_date LIKE '9%'
    ORDER BY dept_name;

# Find the name of all departments currently managed by women.
SELECT dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
    FROM departments d JOIN dept_manager dm on d.dept_no = dm.dept_no
   JOIN employees e on e.emp_no = dm.emp_no
    WHERE to_date LIKE '9%'
    AND gender = 'F'
    ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title) AS Total FROM titles t
    JOIN dept_emp de on t.emp_no = de.emp_no
    JOIN departments d on  d.dept_no = de.dept_no
    WHERE dept_name = 'Customer Service'
    AND t.to_date LIKE '9%'
    AND de.to_date LIKE '9%'
    GROUP BY title;

# Find the current salary of all current managers.

SELECT dept_name AS Department, CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary AS Salary FROM departments d
    JOIN dept_manager dm on d.dept_no = dm.dept_no
    JOIN employees e on dm.emp_no = e.emp_no
    JOIN salaries s on e.emp_no = s.emp_no
    WHERE s.to_date LIKE '9%'
    AND dm.to_date LIKE '9%'
    ORDER BY dept_name;

# Find the names of all current employees, their department name, and their current manager's name .

SELECT CONCAT(e.first_name,' ',e.last_name) AS Employee,
    dept_name AS Department,
    CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
    FROM employees e JOIN dept_emp de on e.emp_no = de.emp_no
    JOIN departments d on de.dept_no = d.dept_no
    JOIN dept_manager dm on e.emp_no = dm.emp_no
    JOIN employees e2 on e2.emp_no = dm.emp_no
    WHERE de.to_date LIKE '9%'
    AND dm.to_date LIKE '9%'
    ORDER BY dept_name;