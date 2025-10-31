--https://leetcode.com/problems/rising-temperature/description/

--# Write your MySQL query statement below


select w2.id as Id from weather w1 join weather w2 where DATE_ADD(w1.recordDate,Interval 1 day)=w2.recordDate and w1.temperature<w2.temperature
