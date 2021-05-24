-- How many female customers do we have from the state of Oregon (OR)?

--ans = 106
SELECT COUNT(firstname) from "public"."customers"
WHERE gender = 'F' and state = 'OR'

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)

--ans = 2497
SELECt count(firstname) from "public"."customers"
WHERE age > 44 and income >= 100000


-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

/*
Ans = 2362
*/

SELECT count(firstname) from "public"."customers"
WHERE (age >= 30 and  age <= 50) and income < 50000

-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
/*
*ANS: 59409.926240780098
*/
SELECt AVG(income) from "public"."customers"
WHERE (age > 20 and  age < 50)
