/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select * from employees ORDER BY first_name ASC, last_name DESC;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
select * from employees ORDER BY birth_date;


/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
select * from employees WHERE first_name ILIKE 'k%' ORDER BY hire_date
