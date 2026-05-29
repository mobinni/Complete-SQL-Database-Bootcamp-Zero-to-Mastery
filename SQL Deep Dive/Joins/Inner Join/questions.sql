
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select c.firstname, c.lastname, o.orderid from orders AS o
INNER JOIN customers AS c ON o.customerid = c.customerid
where c.state IN ('OH','NY','OR')
ORDER BY o.orderid;



/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select p.prod_id, i.quan_in_stock from products as p
INNER JOIN inventory as i on p.prod_id = i.prod_id;

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
select e.first_name, dp_dept_name from employees as e 
INNER JOIN dept_emp as d on de.emp_no = e.empno
INNER JOIN departments as dp on dp.dept_no = de.emp_no;
