
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

select c.firstname, c.lastname, o.orderid from "public"."orders" as o
inner join "public"."customers" as c on o.customerid = c.customerid
where c.state in ('OH', 'NY', 'OR')
order by o.orderid


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

select p.prod_id, inventory.quan_in_stock
from "public"."products" as p
inner join "public"."inventory" as i on p.prod_id = i.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
select e.first_name, dp.dept_name
from "public"."employees" as e
inner join "public"."dept_emp" as de on de.emp_no = e.emp_no
inner join "public"."departments" as dp on dp.dept_no = de.dept_no



