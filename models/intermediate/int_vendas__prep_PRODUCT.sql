With
    /* CHAMADA DOS MODELOS NECESSARIOS. */
     PRODUCT as (
        select *
        from {{ ref('stg_erp__PRODUCT') }}
    )

    , enrich_product as (
        select
            product.product_id
            , PRODUCT.PRODUCT_LINE
            , PRODUCT.PRODUCT_MODEL_ID
            , PRODUCT.PRODUCT_NUMBER
            , PRODUCT.PRODUCT_SUB_CATEGORY_ID
            , PRODUCT.REORDER_POINT
            , PRODUCT.ROW_GUID
            , PRODUCT.SAFETY_STOCK_LEVEL
            , PRODUCT.SELLEND_DATE
            , PRODUCT.SELL_START_DATE
            , PRODUCT.SIZE
            , PRODUCT.SIZE_UNIT_MEASURE_CODE
            , PRODUCT.STANDARD_COST
            , PRODUCT.STYLE
            , PRODUCT.WEIGHT
            , PRODUCT.WEIGHT_UNIT_MEASURE_CODE
        from PRODUCT
    )

    select *
    from enrich_product