# Write your MySQL query statement below

( select name as results
from (
select u.name,  
    count( mr.user_id ) as results
from movierating as mr
inner join users as u
on mr.user_id = u.user_id
group by mr.user_id 
order by results desc, name asc
) as t1
limit 1 )

union all

( select title as results
from (
select mv.title,
    avg(rating) as results
    from movierating as mr
    inner join movies as mv
    on mr.movie_id = mv.movie_id
    where mr.created_at between '2020-02-01' and '2020-02-29'
    group by mv.title
    order by results desc, title asc
    ) as t2
limit 1 )
    