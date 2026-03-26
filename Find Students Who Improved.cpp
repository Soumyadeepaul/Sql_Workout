//https://leetcode.com/problems/find-students-who-improved/description/


SELECT * FROM (
SELECT DISTINCT
    student_id, 
    subject,
    FIRST_VALUE(score) OVER (
        PARTITION BY student_id, subject 
        ORDER BY exam_date ASC
    ) AS first_score,
    FIRST_VALUE(score) OVER (
        PARTITION BY student_id, subject 
        ORDER BY exam_date DESC
    ) AS latest_score
FROM scores
ORDER BY student_id ASC, subject ASC) t1 where first_score<latest_score;
