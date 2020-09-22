/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Assuming a students minimum age for the class is 15, what is the average age of a student?
*
* 30.4000000000000000
*/
SELECT avg(coalesce(age, 15)) FROM "Student";

/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Replace all empty first or last names with a default?
*/
SELECT id, coalesce(name, 'fallback'), coalesce(lastName, 'lastName'), age FROM "Student";
