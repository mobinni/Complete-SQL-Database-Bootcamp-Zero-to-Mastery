-- How many female customers do we have from the state of Oregon (OR)?
-- Result: 106
SELECT COUNT(firstName)
FROM customers
WHERE gender = 'F' and state = 'OR';

-- How many customers over the age of 44 have an income of 100 000 or more? (excluding 44)?
-- Result: 2497
SELECT COUNT(income)
FROM customers
WHERE age > 44 and income >= 100000;

-- How many customers between the ages of 30 and 50 have an income less than 50 000?
-- (include 30 and 50 in the results)
-- Result: 2362
SELECT COUNT(income)
FROM customers
WHERE age >= 30 and age <= 50 AND income < 50000;

-- What is the average income of customers between the ages of 20 and 50? (Excluding 20 and 50)?
-- Result: 59409.926240780098
SELECT AVG(income)
FROM customers
WHERE age > 20 and age < 50;
