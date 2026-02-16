{{
    config(
        materialized='incremental',
        unique_key='sale_date'
    )
}}

select
    sale_date,
    sum(amount) as total_sales,
    count(*) as total_orders
from {{ ref('stg_coffee_sales') }}

{% if is_incremental() %}
    where sale_timestamp > (
        select max(sale_amount) from {{ this }}
    )
{% endif %}
group by sale_date