with produtos as (
    select 
        *
    from 
        {{ref('int_pedidos_group_by_products')}}
)

select * from produtos