--https://leetcode.com/problems/fix-names-in-a-table/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select user_id, concat(UPPER(substr(name,1,1)),LOWER(substr(name,2))) as name
from users order by user_id
