--https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50


--# Write your MySQL query statement below

select activity_date day, count(distinct user_id) active_users from activity where activity_date<='2019-07-27' and activity_date>date_sub('2019-07-27', interval 30 day) group by activity_date
