--https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below


select e.employee_id, e.name,t1.reports_count,t1.average_age from employees e join
(select reports_to,count(*) reports_count, round(avg(age)) average_age   from employees group by reports_to) t1 where 
e.employee_id=t1.reports_to order by e.employee_id
