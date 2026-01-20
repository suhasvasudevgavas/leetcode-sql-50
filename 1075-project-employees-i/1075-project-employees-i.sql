# Write your MySQL query statement below
select distinct p.project_id, 
avg( e.experience_years ) over ( partition by p.project_id ) as average_years
from project p
left outer join employee e
on p.employee_id = e.employee_id
