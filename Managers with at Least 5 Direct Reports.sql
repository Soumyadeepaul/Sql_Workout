--https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below
select name from employee where id in (select managerId from employee group by managerId having count(managerId)>=5);
