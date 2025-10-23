--https://leetcode.com/problems/investments-in-2016/description/


--# Write your MySQL query statement below

--#select i1.pid from insurance i1 join insurance i2
--#where i1.lat=i2.lat and i1.lon=i2.lon and i1.pid!=i2.pid;


--#select distinct i1.pid as p from insurance i1 join insurance i2
--#where  i1.pid!=i2.pid and i1.tiv_2015=i2.tiv_2015 and i1.lat!=i2.lat and i1.lon!=i2.lon;

select round(sum(tiv_2016),2) as tiv_2016 from insurance i where
i.pid in 
(select distinct i1.pid as p1 from insurance i1 join insurance i2
where  i1.pid!=i2.pid and i1.tiv_2015=i2.tiv_2015 and i1.lat!=i2.lat and i1.lon!=i2.lon) 
and
i.pid not in 
(select i1.pid as p2 from insurance i1 join insurance i2
where i1.lat=i2.lat and i1.lon=i2.lon and i1.pid!=i2.pid);
