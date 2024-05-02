/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT AGE(birth_date), * FROM employees
WHERE (
   EXTRACT (YEAR FROM AGE(birth_date))
) > 60 ;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/


SELECT  count(employees) from "public"."employees"
where EXTRACT(month from hire_date)=2

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT  count(employees) from "public"."employees"
where EXTRACT(month from birth_date)=11

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

select max(age(birth_date)) from "public"."employees"
/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

select count(orderid) from "public"."orders"
where extract(month from orderdate)=1

