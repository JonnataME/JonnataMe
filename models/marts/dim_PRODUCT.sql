With
    dim_PRODUCT as (
        select *
        from {{ ref('int_vendas__prep_PRODUCT') }}
    )

    select *
    from dim_PRODUCT