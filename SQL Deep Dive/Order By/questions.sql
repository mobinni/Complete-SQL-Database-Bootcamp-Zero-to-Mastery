/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC, last_name desc;


/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT first_name, last_name, EXTRACT(YEAR FROM AGE(birth_date)) AS Age
FROM employees
ORDER BY age;


/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
SELECT *
FROM employees
WHERE first_name ILIKE 'k%'
ORDER BY hire_date;
