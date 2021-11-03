/*
*  Calculate the total amount of employees per department using grouping sets
*  Database: Employees
*  Table: Employees
*/

select grouping(e.dept_no), e.dept_no, COUNT(e.emp_no)
FROM public.dept_emp as e
GROUP BY
	GROUPING SETS (
		(e.dept_no),
     	()
	)
order by e.dept_no
