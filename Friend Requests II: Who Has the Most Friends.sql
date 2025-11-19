--https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/


--# Write your MySQL query statement below

select id,num from
(select t1.r as id, sum(t1.a) as num from

((select requester_id r, count(distinct(accepter_id)) a from requestaccepted group by requester_id) 
union all
(select accepter_id a, count(distinct(requester_id)) b from requestaccepted group by accepter_id)) t1

group by t1.r) t3
order by num desc limit 1;
