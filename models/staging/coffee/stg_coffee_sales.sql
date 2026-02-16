SELECT
    cast(date as date) as sale_date,
    cast(datetime as timestamp) as sale_timestamp,
    hour_of_day,
    cash_type,
    card as card_id,
    {{ remove_currency('money') }} as amount,
    coffee_name,
    Time_of_Day as time_of_day,
    Weekday as weekday,
    Month_name as month_name,
    Weekdaysort as weekday_sort,
    Monthsort as month_sort
FROM {{ source('coffee_raw', 'coffee_sales_raw')}}
