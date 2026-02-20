# Write your MySQL query statement below
with cte as ( 
    select a.id as id_a, a.student as student_a,
b.id as id_b, b.student as student_b
from seat as a
left outer join seat as b
on a.id + 1 = b.id 
where a.id mod 2 = 1 )
select id_a as id, student_b as student from cte where id_b is not null
union
select id_b as id, student_a as student from cte where id_b is not null
union 
select id_a as id, student_a as student from cte where id_b is null
order by id