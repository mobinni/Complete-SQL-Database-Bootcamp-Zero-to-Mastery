/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT dept_no,count(emp_no) as "no of emp" from  "public"."dept_emp"
group by 
        grouping sets(
        (),
        (dept_no)
        )
order by dept_no 

/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

select a.dept_no,avg(b.salary)from "public"."dept_emp" as a 
inner join "public"."salaries" as b on a.emp_no=b.emp_no
group by 
        grouping sets(
        (),(a.dept_no)
        )
order by a.dept_no
