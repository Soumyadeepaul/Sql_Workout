--https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select *,(case when x+y>z and y+z>x and z+x>y then "Yes" else "No" end) triangle from triangle 
