-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 

-- Question 1: What is the average salary for the company?
-- Table: Salaries
  select avg(salary) from salaries s 
63810.744836143706

-- Question 2: What year was the youngest person born in the company?
-- Table: employees
  select max(birth_date) from employees e 
1965-02-01
  
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
  select count(name) from towns t 
36684

  
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
  select count(language) from countrylanguage c where isofficial is true 
238

-- Question 2: What is the average life expectancy in the world?
-- Table: country
select sum(lifeexpectancy) / count(lifeexpectancy) from country c 
66.4860158009572

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
select sum(population)/ count(population) from city where countrycode = 'NLD'
185001

