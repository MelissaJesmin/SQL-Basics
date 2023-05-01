-- List all employee first and last names only that live in Calgary.
SELECT first_name,last_name FROM employee
WHERE city = 'Calgary';

-- Find the birthdate for the youngest employee.
SELECT first_name, last_name, birth_date FROM employee
ORDER BY birth_date DESC;

SELECT MIN(birth_date) FROM employee;

--youngest by hire date:
SELECT first_name, last_name, hire_date, birth_date FROM employee
ORDER BY hire_date DESC;


-- Find the birthdate for the oldest employee.
SELECT first_name, last_name, birth_date FROM employee
ORDER BY birth_date ASC;

SELECT MAX(birth_date) FROM employee;


--oldest by hire date:
SELECT first_name, last_name, hire_date, birth_date FROM employee
ORDER BY hire_date ASC;


-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employee
WHERE first_name = 'Nancy';

SELECT first_name, last_name FROM employee
WHERE reports_to = 2;

-- Count how many people live in Lethbridge.
SELECT COUNT(employee_id) FROM employee
WHERE city = 'Lethbridge';