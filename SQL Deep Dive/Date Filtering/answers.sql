/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 50, use the appropriate date functions
*/

SELECT * FROM employees;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT * FROM employees;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT * FROM employees;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee?
*/

SELECT MAX(AGE(birth_date)) FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT COUNT(orderid)
FROM orders
WHERE DATE_TRUNC('month', orderdate) = date '2004-01-01';
