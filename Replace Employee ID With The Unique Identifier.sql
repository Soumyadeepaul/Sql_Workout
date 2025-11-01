--https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select eu.unique_id as unique_id, e.name as name  from employees e left join employeeUNI as eu on e.id=eu.id
