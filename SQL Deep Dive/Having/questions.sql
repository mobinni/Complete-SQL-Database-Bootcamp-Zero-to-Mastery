
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT COUNT (b.title) AS " No of titles", a.emp_no, concat(a.first_name, ' ', a.last_name) AS "Name"
FROM employees AS a
JOIN titles AS b USING (emp_no)
WHERE extract(YEAR FROM hire_date ) > 1991
GROUP BY a.emp_no
HAVING COOUNT(b.title)>2
ORDER BY a.emp_no;

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

SELECT a.emp_no, COUNT(b.salary)AS "Salary Changes"
FROM employees AS a JOIN salaries AS b using (emp_no)
JOIN dept_emp AS c using (emp_no)
WHERE dept_no = 'd005'
GROUP BY a.emp_no
HAVING COUNT('Salary Changes') > 15 
ORDER BY emp_no;

/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

SELECT a.emp_no, COUNT(b.dept_no) AS "No of Dept woked"
FROM employees AS a JOIN dept_emp AS b using (emp_no)
GROUP BY a.emp_no
HAVING COUNT(b.dept_No) > 1
ORDER BY a.emp_no;
