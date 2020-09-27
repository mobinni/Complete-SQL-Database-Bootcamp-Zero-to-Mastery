-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
-- Result: 2362
SELECT COUNT(income)
FROM customers
WHERE age BETWEEN 30 AND 50 AND income < 50000;

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
-- Result: 59409.926240780098
SELECT AVG(income)
FROM customers
WHERE age BETWEEN 20 AND 50;
