--https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below

select distinct(n1) as ConsecutiveNums from (select l1.id as i1,l1.num as n1, l2.id as i2, l2.num as n2 from logs l1 join logs l2 where l1.id+1=l2.id and l1.num=l2.num) l3 join
logs l4 where l3.i2+1=l4.id and l3.n2=l4.num
