--https://leetcode.com/problems/market-analysis-i/description/?envType=problem-list-v2&envId=database

--# Write your MySQL query statement below

select u.user_id as buyer_id,u.join_date, ifnull(t1.c,0) orders_in_2019 from users u left join
(select buyer_id,count(*) c  from orders where order_date like "2019-%" group by buyer_id) t1
on u.user_id=t1.buyer_id
