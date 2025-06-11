with sources_orders as (
select * from {{source('northwind','orders')}}

)

select 
    order_id,
    order_date,
    customer_id,
    status,
    amount,
    country_code
from sources_orders
