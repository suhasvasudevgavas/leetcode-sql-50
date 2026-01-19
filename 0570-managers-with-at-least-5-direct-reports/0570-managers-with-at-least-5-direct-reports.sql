# Write your MySQL query statement below
select m.name
from employee as e
left outer join employee as m
on e.managerid = m.id
group by m.id
having count(m.id) >= 5

