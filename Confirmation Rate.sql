--https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below
select signups.user_id as user_id, IFNULL(round(sum(action='confirmed')/count(*),2),0) as confirmation_rate from 
signups left join confirmations on signups.user_id=confirmations.user_id group by signups.user_id;
