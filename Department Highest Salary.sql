--https://leetcode.com/problems/department-highest-salary/description/


--Write your MySQL query statement below

select d.name as Department, e.name as Employee, e.salary as Salary
from
employee e
join
(select departmentId as id ,max(salary) as Salary from employee group by departmentId) as n
join
department d
where d.id=e.departmentId and e.departmentId=n.id and e.salary=n.Salary;
