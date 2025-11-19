--https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select customer_id from
(select customer_id,count(distinct product_key) c from customer group by customer_id) t1
where t1.c= (select count(*) from product);
