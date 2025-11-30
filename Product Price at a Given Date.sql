--https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50


--Write your MySQL query statement below

(select product_id, new_price as price from 
products where 
(product_id,change_date) in 
(select product_id, max(change_date) as date from products where change_date<="2019-08-16" group by product_id))

union

select product_id,10 as price from products p
where p.product_id not in 
(select product_id from 
(select * from products where change_date<="2019-08-16" order by change_date desc) t1
group by t1.product_id);
