/*
* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

SELECT * FROM orders;

-- ANSWER:
SELECT *
FROM orders
WHERE customer IN (7888, 1082, 12808, 9623);


/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant, and Utrecht?
*/

SELECT * FROM city;

-- ANSWER: 
SELECT *
FROM city 
WHERE IN district ("Zuid-Holland", "Noord-Brabant","Utrecht");
