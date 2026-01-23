with cte1 as 
( select player_id, 
event_date, 
rank() over ( partition by player_id order by event_date ) as r
from activity ),
cte2 as ( select player_id, 
event_date, 
rank() over ( partition by player_id order by event_date ) as r
from activity)

select round( count( distinct cte2.player_id ) / count( distinct cte1.player_id ), 2) as fraction
from cte1 
left outer join cte2
on cte1.player_id = cte2.player_id
and date_add(cte1.event_date, interval 1 day ) = cte2.event_date
and cte1.r = 1
and cte2.r = 2
