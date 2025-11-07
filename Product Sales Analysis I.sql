--https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below

select p.product_name,s.year,s.price from sales s join product p on s.product_id=p.product_id
