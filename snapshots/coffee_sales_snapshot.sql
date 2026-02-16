{% snapshot coffee_sales_snapshot %}

{{
    config(
      target_schema='coffee_snapshots',
      unique_key='card_id',
      strategy='timestamp',
      updated_at='sale_timestamp'
    )
}}

select
    card_id,
    coffee_name,
    amount,
    sale_timestamp
from {{ ref('stg_coffee_sales') }}

{% endsnapshot %}
