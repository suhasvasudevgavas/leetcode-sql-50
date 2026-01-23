# Write your MySQL query statement below
select 
round( 
    ( sum( 
        if( delivery_order = 1 and delivery_time = 'immediate', 1, 0 ) ) 
        / 
        count( distinct customer_id ) * 100 )
        , 2 ) as immediate_percentage
from 
( select customer_id,
if( order_date = customer_pref_delivery_date, 'immediate', 'scheduled' ) as delivery_time, 
dense_rank() over ( partition by customer_id order by order_date ) as delivery_order
from Delivery ) 
as t
