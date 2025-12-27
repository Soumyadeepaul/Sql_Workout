--https://leetcode.com/problems/tree-node/description/


--# Write your MySQL query statement below

select id, (case when p_id is null then "Root" else (case when id in (select p_id from tree) then "Inner" else "Leaf" end) end) type from tree
