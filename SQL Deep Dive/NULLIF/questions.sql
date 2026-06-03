/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

SELECT prod_id, title, price, NULL IF(special,0) as "Special"
from products;

