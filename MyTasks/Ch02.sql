SELECT * FROM teachers
ORDER BY SCHOOL, LAST_NAME;

SELECT * FROM teachers
WHERE first_name LIKE 'S%' AND salary > 40000;

SELECT * FROM teachers
WHERE hire_date > '2010-01-01'
ORDER BY salary DESC;
