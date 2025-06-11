with amount_por_country as (
    select *
    from
        {{ref('stg_crm__orders')}}
)

select country_code, sum(amount)
from amount_por_country
group by country_code