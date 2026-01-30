# Write your MySQL query statement below
select x,y,z,
if( ( 
    ( ( z >= x and z >= y ) and ( x + y > z ) ) 
 or ( ( y >= x and y >= z ) and ( x + z > y ) )
 or ( ( x >= y and x >= z ) and ( y + z > x ) ) ), 'Yes', 'No' ) as triangle
from triangle