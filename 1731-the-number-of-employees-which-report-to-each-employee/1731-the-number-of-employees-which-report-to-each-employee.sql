# Write your MySQL query statement below
select m.employee_id,
m.name,
count(e.employee_id) as reports_count,
round( avg( e.age ) ) as average_age
from employees as e
left outer join employees as m
on e.reports_to = m.employee_id
where m.employee_id is not null
group by m.employee_id, m.name
having count(e.employee_id) >= 1
order by m.employee_id