-- //https://leetcode.com/problems/employees-earning-more-than-their-managers/

-- # Write your MySQL query statement below
select t1.name as Employee from employee as t1 join employee as t2 where t1.managerId=t2.id and t1.salary>t2.salary
