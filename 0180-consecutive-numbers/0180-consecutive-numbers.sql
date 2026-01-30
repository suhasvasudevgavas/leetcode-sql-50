# Write your MySQL query statement below
select distinct( a.num ) as ConsecutiveNums
from logs as a
inner join logs as b
on a.id + 1 = b.id
inner join logs as c
on b.id + 1 = c.id 
where a.num = b.num 
and b.num = c.num