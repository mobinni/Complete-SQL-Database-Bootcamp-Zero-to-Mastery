/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT age(birth_date)
FROM employees
WHERE (EXTRACT(YEAR FROM age(birth_date))) > 60/

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT count(emp_no)
FROM employees
WHERE EXTRACT (month from hire_date) = 2

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

FROM employees
WHERE EXTRACT (month from birth_date) = 11

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/
SELECT MAX(AGE(birth_date))
FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/
SELECT COUNT(orderid)
FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';

