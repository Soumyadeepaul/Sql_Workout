--https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select u.product_id, ifnull(round(sum(p.price*u.units)/sum(u.units),2),0) as average_price from unitssold u join prices p
where u.product_id=p.product_id and u.purchase_date<=p.end_date and u.purchase_date>=p.start_date group by p.product_id

union all



SELECT p.product_id, 0 AS average_price
FROM prices p
WHERE p.product_id NOT IN (
    SELECT DISTINCT product_id
    FROM unitssold
);
