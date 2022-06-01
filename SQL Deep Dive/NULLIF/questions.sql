/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

SELECT 
    product_id,
    price,
    special,
    NULLIF(special, 0)
    
FROM products

