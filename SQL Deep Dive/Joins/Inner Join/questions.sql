
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select  orderid, customerid, state
From orders 
Inner JOIN customers using(customerid)
where state = 'NY' or state = 'OH' or state = 'OR'



/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT p.prod_id, e.quan_in_stock
FROM products as p
inner join inventory as e On e.prod_id = p.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT e.emp_no, d.dept_no
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no;




