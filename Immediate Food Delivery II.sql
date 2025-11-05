--https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below
select 
round(sum(case when a.customer_pref_delivery_date-a.order_date=0 then 1 else 0 end)/count(*) *100,2) as immediate_percentage from delivery a where 

(customer_id,order_date) in


(select customer_id , min(order_date)  from delivery group by customer_id);
