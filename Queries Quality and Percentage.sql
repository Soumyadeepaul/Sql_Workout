--https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select p.query_name, round(sum(p.rating/p.position)/count(*),2) as quality, round((sum(rating<3)/count(*)) *100,2) as poor_query_percentage from queries p group by p.query_name;
