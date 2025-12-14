--https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select * from (
select contest_id, round(count(*)/(select count(*) from users)*100,2) as percentage  from register group by contest_id) t order by t.percentage desc, t.contest_id asc
