
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT a.emp_no,count(b.title) from "public"."employees" as a 
inner join "public"."titles" as b on a.emp_no=b.emp_no
where EXTRACT(YEAR from a.hire_date)>1991
GROUP by a.emp_no
having count(b.title)>'2'
order by a.hire_date

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

select a.emp_no,count(a.salary) from "public"."salaries" as a
inner join "public"."dept_emp" as b on b.emp_no=a.emp_no 
where b.dept_no='d005'
GROUP by a.emp_no
having count(a.salary)>15
order by emp_no

--11493


/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/


SELECT emp_no,count(dept_no) from "public"."dept_emp"
GROUP by emp_no
having count(dept_no)>1
order by emp_no
