
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT ord.orderid, ord.orderdate, ord.customerid, cus.state FROM orders as ord
INNER JOIN customers as cus
ON ord.customerid = cus.customerid
WHERE cus.state IN ('OH','NY','OR')
ORDER BY orderid ASC


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT * FROM products AS prod
INNER JOIN inventory AS inv
ON prod.prod_id = inv.prod_id
ORDER BY prod_id ASC


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT emp.emp_no, emp.first_name, emp.last_name, demp.dept_no , dept.dept_name FROM employees AS emp
INNER JOIN dept_emp AS demp ON emp.emp_no = demp.emp_no
INNER JOIN departments AS dept ON demp.dept_no = dept.dept_no
ORDER BY emp.emp_no



