--https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below
select a.student_id,a.student_name,a.subject_name,sum(case when e.subject_name is null then 0 else 1 end) as attended_exams from 
(select * from students s join  subjects ss) as a
left join
examinations e
on a.student_id=e.student_id and a.subject_name=e.subject_name

group by a.student_id, a.subject_name

order by a.student_id;
