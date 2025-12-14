--https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below

select *,round(t.amount/7,2) as average_amount from(
select c.visited_on, 
(select sum(amount) from customer where visited_on between date_sub(c.visited_on,interval 6 day) and c.visited_on) amount  -- to calculate between range
from customer c 
where visited_on>=(select date_add(min(visited_on),interval 6 day) from customer) --starting from 7days ahead
group by visited_on order by visited_on) t;
