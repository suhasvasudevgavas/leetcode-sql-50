# Write your MySQL query statement below

with cte as (
select sum( if( income < 20000, 1, 0 ) ) as low_sal,
sum( if( income >= 20000 and income <=50000, 1, 0 ) ) as avg_sal,
sum( if( income > 50000, 1, 0 ) ) as high_sal
from accounts )
select 'Low Salary' as category, low_sal as accounts_count from cte
union
select 'Average Salary' as category, avg_sal as accounts_count from cte
union
select 'High Salary' as category, high_sal as accounts_count from cte

