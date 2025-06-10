with produtos as(

    select
        produto,
        SUM(quantidade) as qtd_produto,
        SUM(preco_unitario) as preco_total_por_produto
    from {{ref("stg_crm__nova_pedidos")}}
    group by produto
)


select * from produtos