SELECT
    sale_date,
    sum(amount) as total_sales,
    count(*) as total_orders
from {{ ref('stg_coffee_sales')}}
group by sale_date
order by sale_date