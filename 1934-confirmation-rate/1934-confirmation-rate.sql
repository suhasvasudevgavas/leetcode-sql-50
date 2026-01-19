# Write your MySQL query statement below
select s.user_id, 
if( sum( if( c.action = 'confirmed', 1, 0 ) ) = 0, 0,
    sum( if( c.action = 'confirmed', 1, 0 ) ) / count( c.action) ) as confirmation_rate
from signups as s
left outer join confirmations as c
on s.user_id = c.user_id
group by s.user_id


