# Write your MySQL query statement below
with cte as ( select e.employee_id,
    m.employee_id as manager_id,
    e.salary
    from employees as e
    left outer join employees as m
    on e.manager_id = m.employee_id 
    where e.manager_id is not null )

    select employee_id
    from cte
    where manager_id is null
    and salary < 30000
    order by employee_id