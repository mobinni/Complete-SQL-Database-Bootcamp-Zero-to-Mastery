/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT first_name,last_name FROM employees 
ORDER BY first_name, last_name DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/

SELECT * FROM EMPLOYEES ORDER BY AGE(birth_date) DESC;
/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/SELECT * FROM employees WHERE first_name ILIKE 'k%' ORDER BY hire_date ASC;
