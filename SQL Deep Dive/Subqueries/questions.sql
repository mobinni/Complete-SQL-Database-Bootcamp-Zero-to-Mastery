/* TRY TO WRITE THESE AS JOINS FIRST */
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
-- with JOIN
select
    o.orderid,
    o.customerid,
    c.state
from orders as o
join customers as c using(customerid)
where c.state in ('OH', 'NY', 'OR')
order by o.orderid

-- with SUBQUERY
select
    o.orderid,
    o.customerid,
    (select c.state from customers as c 
     where c.customerid = o.customerid and c.state in ('OH', 'NY', 'OR')
     )
from orders as o
order by o.orderid


/*
* DB: Employees
* Table: employees
* Question: Filter employees who have emp_no 110183 as a manager
*/
-- with JOIN
select
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.emp_no
from employees as e
join dept_emp as de using(emp_no)
join dept_manager as dm using dept_no
where dm.emp_no = 110183
order by e.emp_no

-- with SQ
select
    e.emp_no,
    e.first_name,
    e.last_name
from employees as e
where emp_no in (
    select emp_no from dept_emp
    where dept_no in (
        select dept_no from dept_manager
        where emp_no = 110183
        )
    )
order by e.emp_no

