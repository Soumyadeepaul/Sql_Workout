--https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50

--
select 
(case when id not in (select id from seat) then id-1 else id end) as id,student 
from(
select id-1 as id,student from seat where id%2=0
union all
select id+1 as id,student from seat where id%2=1) as a
order by id;
