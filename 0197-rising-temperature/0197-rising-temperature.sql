# Write your MySQL query statement below
select b.id
from weather as a
left outer join weather as b
on a.recorddate = DATE_SUB(b.recorddate, INTERVAL 1 DAY)
and a.temperature < b.temperature
where b.temperature is not null
