use employees;

SELECT CONCAT(first_name, ' ',last_name),birth_date FROM employees
    WHERE emp_no IN (SELECT emp_no FROM dept_manager);

use codeup_test_db;

SHOW TABLES;

INSERT INTO users_albums(user_id, album_id) VALUES (
                         (SELECT id FROM users WHERE username = 'lisa_green'),
                         (SELECT id FROM albums WHERE artist = 'Modonna' AND name = 'The Immaculate Collection'));