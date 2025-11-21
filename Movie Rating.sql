--https://leetcode.com/problems/movie-rating/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below

select name as results
from
(select name from 
(select user_id,count(*) as num from movierating group by user_id) t1
join users
where users.user_id=t1.user_id order by t1.num desc, users.name asc limit 1) as t3
union all
(select title as name from
(select movie_id, avg(rating) as num from movierating where created_at regexp '2020-02-*' group by movie_id) t2
join
movies
where t2.movie_id=movies.movie_id order by num desc, title asc limit 1) 
