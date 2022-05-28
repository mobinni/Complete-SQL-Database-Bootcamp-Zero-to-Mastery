/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

SELECT * FROM orders
WHERE customerid IN (7888, 1082, 12808, 9623);


/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/

SELECT * FROM city
WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht');
