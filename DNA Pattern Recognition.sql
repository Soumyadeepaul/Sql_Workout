--https://leetcode.com/problems/dna-pattern-recognition/description/

--# Write your MySQL query statement below

select *, (case when dna_sequence regexp "^ATG" then 1 else 0 end) has_start,
(case when dna_sequence regexp "TAA$|TAG$|TGA$" then 1 else 0 end) has_stop,
(case when dna_sequence regexp "ATAT" then 1 else 0 end) has_atat,
(case when dna_sequence regexp "GGG" then 1 else 0 end) has_ggg from samples
