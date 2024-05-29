/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE  or REPLACE view "90-95" as 
SELECT  *  from "public"."employees"
where extract(year from hire_date)>=1990  and extract(year from hire_date)<=1995
  -- or we use extract(year from hire_date) between 1990 and 1995
order by emp_no,hire_date
-- ...

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

create or REPLACE view "bigbucks" as 
SELECT  DISTINCT emp_no from "public"."salaries"
where salary>80000
order by emp_no
-- ...
