--https://leetcode.com/problems/count-salary-categories/description/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below

select "Low Salary" category,count(*) accounts_count from accounts where income<20000

union all

select "High Salary",count(*) accounts_count from accounts where income>50000

union all

select "Average Salary",count(*) accounts_count from accounts where income>=20000 and income<=50000
