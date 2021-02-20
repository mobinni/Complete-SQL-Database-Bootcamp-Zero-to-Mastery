
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT a.orderid, b.customerid, b.state
FROM orders AS a 
INNER JOIN customers AS b ON a.customerid = b.customerid
AND b.state IN ('OH', 'NY', 'OR')
ORDER BY orderid;


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

SELECT a.prod_id, b.title, a.quan_in_stock
FROM inventory AS a 
INNER JOIN products AS b ON a.prod_id = b.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT a.emp_no, concat(a.first_name, ' ' ,a.last_name) AS "Name", c.dept_name 
FROM employees AS a 
INNER JOIN dept_emp AS b ON a.emp_no = b. emp_no
INNER JOIN departments AS c ON b.dept_no = c.dept_no
ORDER BY emp_no; 

