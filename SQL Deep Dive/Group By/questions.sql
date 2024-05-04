/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/
select hire_date,count(emp_no) as "no. of emp"
from "public"."employees"
GROUP by hire_date
/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

select a.hire_date,count(b.title) as "no. of POSITION"
from"public"."employees" as a
inner join "public"."titles" as b on a.emp_no=b.emp_no
where EXTRACT(year from hire_date)>1991
GROUP by a.hire_date
order by hire_date 

--time wale query pe prob horhi thi 


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

--select b.dept_name,count(a.emp_no) as "total_no_of_emp"
--from "public"."employees" as a 
--inner join "public"."dept_emp" as c on c.emp_no=a.emp_no
--inner join "public"."departments" as b on b.dept_no=c.dept_no
--inner join "public"."salaries" as d on d.emp_no=a.emp_no 
--where b.dept_name='Development'
--GROUP by b.dept_name

SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e
JOIN dept_emp AS de USING(emp_no)
WHERE de.dept_no = 'd005'
GROUP BY e.emp_no, de.from_date, de.to_date
ORDER BY e.emp_no, de.to_date;

