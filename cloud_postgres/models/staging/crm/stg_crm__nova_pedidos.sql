with pedidos as (
    select
        cliente_id,
        UPPER(nome) as nome,
        data_pedido,
        UPPER(produto) as produto,
        quantidade,
        preco_unitario,
        valor_total
    from {{ref("raw_crm__nova_pedidos")}}

)

select * from pedidos