/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT distinct titles FROM titles;


/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELECT COUNT(distinct birth_date) FROM employees;

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

SELECT distinct lifeexpectancy FROM country
where lifeexpectancy is not null 
order by lifeexpectancy;

