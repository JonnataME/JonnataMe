With
    dim_CUSTOMER as (
        select *
        from {{ ref('int_vendas__prep_CUSTOMER') }}
    )

    select *
    from dim_CUSTOMER