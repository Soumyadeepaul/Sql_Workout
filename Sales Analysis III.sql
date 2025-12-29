--https://leetcode.com/problems/sales-analysis-iii/description/

--# Write your MySQL query statement below

select t1.product_id,t1.product_name from product t1 natural join
(select product_id, max(sale_date) s2, min(sale_date) s1 from sales group by product_id having s2<="2019-03-31" and s1>="2019-01-01") t2 
