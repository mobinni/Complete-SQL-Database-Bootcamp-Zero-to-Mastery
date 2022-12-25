/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

SELECT * FROM orders;

SELECT * 
FROM orders
where customerid in (7888, 1082, 12808, 9623);

/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/

SELECT * FROM city;

SELECT * FROM city
where district in ('Zuid-Holland', 'Noord-Brabant', 'Utrecht');
