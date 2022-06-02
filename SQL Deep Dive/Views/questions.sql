/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE VIEW "90-95" AS
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    e.hire_date
FROM employees AS e
WHERE EXTRACT ( YEAR FROM e.hire_date) BETWEEN 1990 AND 1995;
-- ...

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

-- VIEW selects all employees but not all their salaries that have been over 80,000
CREATE VIEW "bigbucks" AS
SELECT
    DISTINCT e.emp_no,
    e.first_name,
    e.last_name
FROM employees AS e
JOIN salaries AS s USING(emp_no)
GROUP BY e.emp_no, s.salary
HAVING s.salary > 80000
ORDER BY e.emp_no
-- ...
