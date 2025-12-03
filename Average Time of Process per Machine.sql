--https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below

select a1.machine_id,round(avg(a2.timestamp-a1.timestamp),3) as processing_time from activity a1 join
activity a2 where
a1.machine_id=a2.machine_id and a2.process_id=a1.process_id and a1.activity_type!=a2.activity_type and a1.activity_type!="end" group by a1.machine_id
