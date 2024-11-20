-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

/*
* Write your query here
*/SELECT firstname, lastname, age, income
FROM customers
where (age BETWEEN 30 and 50)
AND (income < 50000);

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
/*
* Write your query here
*/SELECT AVG(income)
FROM customers
WHERE (age BETWEEN 20 AND 50);

The average income between the ages 20 and 50 is = 59361.925908612832

