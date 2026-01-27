# Write your MySQL query statement below
select max(t.num) as num
from ( 
    select num, count(num) as occurence
        from mynumbers 
        group by num
        having occurence = 1 ) as t