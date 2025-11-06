--https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select max(num) as num from 
(select num from mynumbers group by num having count(num)=1 order by num desc limit 1) a;
