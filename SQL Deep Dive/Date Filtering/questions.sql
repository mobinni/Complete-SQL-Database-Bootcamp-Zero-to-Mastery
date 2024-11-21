/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/
SELECT *
FROM employees
WHERE EXTRACT(YEAR FROM AGE(birth_date)) > 60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
SELECT count( * ) AS Feb_Employees
FROM employees
WHERE EXTRACT(MONTH FROM hire_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/
SELECT count( * ) AS Birth_Month
FROM employees
WHERE EXTRACT(MONTH FROM birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/
SELECT *
FROM employees
WHERE AGE(birth_date) = (
    SELECT MAX(AGE(birth_date))
    FROM employees
)
LIMIT 1;

The oldest employee is = jouni pocchiola



/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/
SELECT count(*)
FROM orders
WHERE orderdate BETWEEN '2004-01-01' AND '2004-01-31';
1000 orders were made in january

The way to do it with the date functions is 

SELECT COUNT(*) AS Order_Count
FROM Orders
WHERE EXTRACT(Month FROM orderdate) = 1
AND EXTRACT(YEAR FROM orderdate) = 2004;

and the result is still 1000 orders
