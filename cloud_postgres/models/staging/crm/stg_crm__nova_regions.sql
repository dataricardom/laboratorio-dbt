with renamed as (
    select 
        region_id as id_regiao,
        region_description as descricao_regiao
    from
        {{ref('raw_crm__nova_regions')}}
)

select * from renamed