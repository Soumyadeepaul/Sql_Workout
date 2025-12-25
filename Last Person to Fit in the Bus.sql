--https://leetcode.com/problems/last-person-to-fit-in-the-bus/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below

select q1.person_name from queue q1 join queue q2 on q1.turn>=q2.turn group by q1.turn having sum(q2.weight)<=1000 order by q1.turn desc limit 1
