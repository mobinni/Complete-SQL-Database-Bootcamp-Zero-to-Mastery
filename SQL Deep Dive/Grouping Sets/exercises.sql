/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
SELECT d.dept_name, COUNT(e.emp_no)
FROM departments as d
INNER JOIN dept_emp as de USING(dept_no)
INNER JOIN employees as e USING(emp_no)
GROUP BY 
    GROUPING SETS(
        (d.dept_name),
        () -- refers to the total
    )
ORDER BY d.dept_name


/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/
SELECT d.dept_no, d.dept_name, AVG(s.salary)
FROM departments as d
INNER JOIN dept_emp as de USING(dept_no)
INNER JOIN salaries as s USING(emp_no)
GROUP BY
    GROUPING SETS(
        (d.dept_no, d.dept_name),
        ()
    )
ORDER BY d.dept_no
