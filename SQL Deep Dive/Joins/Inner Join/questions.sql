
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select a.customerid,
concat(a.firstname,' ',a.lastname) as "name",
a.state,
b.orderdate,
b.orderid
from "public"."customers" as a 
inner join "public"."orders" as b on a.customerid=b.customerid and (a.state='OH' OR a.state='NY' OR a.state='OR')
order by orderid

--ans:359



/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/

select a.title,a.prod_id,
b.quan_in_stock
from "public"."products" as a 
inner join "public"."inventory" as b on a.prod_id=b.prod_id
order by prod_id


/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT a.emp_no, 
concat(first_name,' ',last_name) as "name",
b.dept_no,
c.dept_name
from "public"."employees" as a 
inner join "public"."dept_emp" as b on a.emp_no=b.emp_no
inner join "public"."departments" as c on c.dept_no=b.dept_no 
order by emp_no asc


