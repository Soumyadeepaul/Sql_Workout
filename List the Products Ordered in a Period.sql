--https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below
select t2.product_name,t1.unit from
(select product_id, sum(unit) as unit from orders where order_date like "2020-02-%" group by product_id) t1 join products t2 where t1.product_id=t2.product_id and t1.unit>=100
