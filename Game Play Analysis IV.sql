--https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below
select round(count(*)/(select count(distinct(player_id)) from activity),2) as fraction from
(select * from activity
where 
(player_id,DATE_SUB(event_date,interval 1 day)) in (select player_id,min(event_date) from activity group by player_id)) as x
