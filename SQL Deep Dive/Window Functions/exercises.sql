/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

SELECT 
    DISTINCT continent,
    sum(population) OVER (
        PARTITION BY continent
    )
FROM country
ORDER BY continent;

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/

SELECT 
    DISTINCT continent,
    sum(population) OVER w1,
    
    CONCAT(
        ROUND(   
            (sum(population::float) OVER w1 
            / sum(population::float) OVER () * 100)::numeric, 2 -- round() needed type cast for decimal round-off
        ), ' %') AS "% of world population"
    
FROM country
-- define placeholder window
WINDOW w1 AS( Partition BY continent )
ORDER BY continent
;


/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

SELECT 
    DISTINCT r.name,
    COUNT(t.id) OVER (PARTITION BY r.code) as "# of towns"

FROM regions AS r

JOIN departments as d ON d.region = r.code
JOIN towns as t ON t.department = d.code

ORDER BY r.name;
