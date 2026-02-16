SELECT
    coffee_name,
    count(*) as total_orders,
    sum(amount) as total_revenue
from {{ ref('stg_coffee_sales')}}
group by coffee_name
order by total_revenue desc