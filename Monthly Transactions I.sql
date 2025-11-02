--https://leetcode.com/problems/monthly-transactions-i/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select 
substring(trans_date,1,length(trans_date)-3) as month,
country,
count(*) as trans_count,
sum(case when state = 'approved' then 1 else 0 end) as approved_count, 
sum(amount) as trans_total_amount, 
sum(amount)-sum(case when state='declined' then amount else 0 end) as approved_total_amount 
from 
transactions group by 
substring(trans_date,1,length(trans_date)-3), country;
