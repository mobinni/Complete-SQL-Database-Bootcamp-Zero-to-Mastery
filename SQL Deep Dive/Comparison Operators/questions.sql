How many female customers do we have
from the state of Oregon (
        OR
    ) ?
SELECT firstname,
    gender
FROM "public"."customers"
WHERE gender = 'F'
    AND state = 'OR';
SELECT COUNT(firstname)
FROM "public"."customers"
WHERE gender = 'F'
    AND state = 'OR';
-- ANSWER IS 106 
Who over the age of 44 has an income of 100 000
or more ? (excluding 44) >>
SELECT COUNT(income)
FROM "public"."customers"
where age > 44
    AND income >= 100000 Who between the ages of 30 and 50 has an income less than 50 000 ? (
        include 30
        and 50 in the results
    ) >>
SELECT firstname,
    age,
    income
FROM "public"."customers"
where age >= 30
    and age <= 50
    and income < 50000 What is the average income between the ages of 20 and 50 ? (
        Excluding 20
        and 50
    ) >>
SELECT AVG(income)
FROM "public"."customers"
where NOT age > 20
    OR age < 50;
59684.312033700452