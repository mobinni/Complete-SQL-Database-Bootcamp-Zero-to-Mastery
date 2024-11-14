
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/
SELECT * 
From customers
WHERE age < 30 
OR age > 50 
and income > 50000 
and (country = 'Japan' 
Or country = 'Australia')

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/
SELECT *
FROM orders
WHERE totalamount > 100 
and (orderdate >= '2004-06-01' and orderdate <= '2004-06-30')
