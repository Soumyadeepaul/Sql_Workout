--https://leetcode.com/problems/second-highest-salary/description/


--# Write your MySQL query statement below

select ifnull((select salary from employee where 
salary!=(select salary from employee order by salary desc limit 1) order by salary desc limit 1),null)
as SecondHighestSalary ;


--select salary as SecondHighestSalary from employee order by salary desc limit 1 offset 1;


-- SELECT 
--     IFNULL(
--         (
--             SELECT DISTINCT salary 
--             FROM employee 
--             WHERE salary < (SELECT MAX(salary) FROM employee)
--             ORDER BY salary DESC 
--             LIMIT 1
--         ),
--         NULL
--     ) AS SecondHighestSalary;
