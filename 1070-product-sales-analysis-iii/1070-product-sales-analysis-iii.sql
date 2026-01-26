# Write your MySQL query statement below
with cte1 as (
select product_id, min( year ) as first_year 
from sales 
group by product_id )
select s.product_id, 
cte1.first_year,
s.quantity,
s.price 
from cte1
inner join sales as s
on s.product_id = cte1.product_id
and s.year = cte1.first_year


