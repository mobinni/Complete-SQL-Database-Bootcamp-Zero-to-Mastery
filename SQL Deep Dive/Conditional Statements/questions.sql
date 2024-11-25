/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/
SELECT prod_id, 
    CASE 
        when price > 20 THEN 'expensive'
        when price > 10 and price <= 20 then 'average'
        WHEN price <= 10 then 'cheap'
    end as price_class                
FROM products

