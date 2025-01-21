With
    /* CHAMADA DOS MODELOS NECESSARIOS. */
    ADDRESS as (
        select *
        from {{ ref('stg_erp__ADDRESS') }}
    )

    , COUTRYREGION as (
        select *
        from {{ ref('stg_erp__COUNTRYREGION') }}
    )

    , CREDITCARD as (
        select *
        from {{ ref('stg_erp__CREDITCARD') }}
    )

    , CUSTOMER as (
        select *
        from {{ ref('stg_erp__CUSTOMER') }}
    )

    , EMPLOYEE as (
        select *
        from {{ ref('stg_erp__EMPLOYEE') }}
    )

    , PERSON as (
        select *
        from {{ ref('stg_erp__PERSON') }}
    )

    , PRODUCT as (
        select *
        from {{ ref('stg_erp__PRODUCT') }}
    )

    , SALESORDERDETAIL as (
        select *
        from {{ ref('stg_erp__SALESORDERDETAIL') }}
    )

    , SALESORDERHEADER as (
        select *
        from {{ ref('stg_erp__SALESORDERHEADER') }}
    )

    , SALESORDERHEADERSALESREASON as (
        select *
        from {{ ref('stg_erp__SALESORDERHEADERSALESREASON') }}
    )

    , SALESPERSON as (
        select *
        from {{ ref('stg_erp__SALESPERSON') }}
    )

    , SALESREASON as (
        select *
        from {{ ref('stg_erp__SALESREASON') }}
    )

    , STATEPROVINCE as (
        select *
        from {{ ref('stg_erp__STATEPROVINCE') }}
    )

    , enrich_product as (
        select

            PRODUCT.PRODUCT_LINE
            ,PRODUCT.PRODUCT_MODEL_ID
            ,PRODUCT.PRODUCT_NUMBER
            ,PRODUCT.PRODUCT_SUB_CATEGORY_ID
            ,PRODUCT.REORDER_POINT
            ,PRODUCT.ROW_GUID
            ,PRODUCT.SAFETY_STOCK_LEVEL
            ,PRODUCT.SELLEND_DATE
            ,PRODUCT.SELL_START_DATE
            ,PRODUCT.SIZE
            ,PRODUCT.SIZE_UNIT_MEASURE_CODE
            ,PRODUCT.STANDARD_COST
            ,PRODUCT.STYLE
            ,PRODUCT.WEIGHT
            ,PRODUCT.WEIGHT_UNIT_MEASURE_CODE
            ,SALESORDERDETAIL.ORDER_QTY
            ,SALESORDERDETAIL.UNIT_PRICE
        from PRODUCT
        left join SALESORDERDETAIL on PRODUCT.PRODUCT_ID = SALESORDERDETAIL.PRODUCT_ID
        left join SALESORDERHEADER on SALESORDERDETAIL.SALES_ORDER_ID = SALESORDERHEADER.SALES_ORDER_ID
    )

    select *
    from enrich_product