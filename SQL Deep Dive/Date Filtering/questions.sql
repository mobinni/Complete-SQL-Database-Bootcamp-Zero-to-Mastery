/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

select count(emp_no) from employees
where birth_date <= (now() - interval '60 years');

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

select count(emp_no) from employees
where extract (MONTH from hire_date) = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

select count(emp_no) from employees
where extract (MONTH from birth_date) = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

select max(age(birth_date)) from employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

select count(orderid) from orders
where extract (year from orderdate) = 2004 and extract (month from orderdate) = 1;

