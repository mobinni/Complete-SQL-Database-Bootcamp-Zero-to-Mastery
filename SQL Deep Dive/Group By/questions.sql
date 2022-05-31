/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT e.hire_date, COUNT(e.emp_no)
FROM employees as e
GROUP BY e.hire_date

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, COUNT(t.title)
FROM employees as e
LEFT JOIN titles as t ON t.emp_no = e.emp_no
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
ORDER BY e.emp_no


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e
INNER JOIN dept_emp as de ON de.emp_no = e.emp_no
INNER JOIN departments as d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Development'
GROUP BY e.emp_no, de.from_date, de.to_date
ORDER BY e.emp_no;