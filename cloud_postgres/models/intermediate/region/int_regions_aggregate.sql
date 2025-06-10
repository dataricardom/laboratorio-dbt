with int_regions_aggregate as (
    select
        id_regiao,
        count(*)
    from {{ref("stg_crm__nova_regions")}}
    group by id_regiao
)

select * from int_regions_aggregate