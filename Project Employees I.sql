--https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50


--Write your MySQL query statement below

select p.project_id,round(avg(e.experience_years),2) as average_years from employee e join project p where e.employee_id=p.employee_id group by p.project_id
