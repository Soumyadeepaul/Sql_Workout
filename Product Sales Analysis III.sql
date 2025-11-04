--https://leetcode.com/problems/product-sales-analysis-iii/submissions/1820304674/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select s1.product_id,s1.year as first_year ,s1.quantity, s1.price from sales s1 
join
(select product_id,min(year) as year from sales group by product_id) s2
on s1.product_id=s2.product_id and s2.year=s1.year;
