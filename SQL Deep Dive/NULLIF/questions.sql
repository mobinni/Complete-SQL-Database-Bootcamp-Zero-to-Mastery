/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

SELECT prod_id,category,title,actor,price,NULLIF(special,0) as "special" from "public"."products"
