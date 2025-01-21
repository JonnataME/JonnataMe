With
    renomeado as (
        select
            cast(CLASS as varchar) as CLASS
            , cast(COLOR as varchar) as COLOR
            , cast(DAYSTOMANUFACTURE as int) as DAYS_TO_MANUFACTURE
            , cast(FINISHEDGOODSFLAG as int) as FINISHED_GOODS_FLAG
            , cast(LISTPRICE as decimal) as LIST_PRICE
            , cast(MAKEFLAG as int) as MAKE_FLAG
            , cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(NAME as varchar) as NAME
            , cast(PRODUCTID as int) as PRODUCT_ID
            , cast(PRODUCTLINE as varchar) as PRODUCT_LINE
            , cast(PRODUCTMODELID as int) as PRODUCT_MODEL_ID
            , cast(PRODUCTNUMBER as varchar) as PRODUCT_NUMBER
            , cast(PRODUCTSUBCATEGORYID as int) as PRODUCT_SUB_CATEGORY_ID
            , cast(REORDERPOINT as smallint) as REORDER_POINT
            , cast(ROWGUID as varchar) as ROW_GUID
            , cast(SAFETYSTOCKLEVEL as smallint) as SAFETY_STOCK_LEVEL
            , cast(SELLENDDATE as datetime) as SELLEND_DATE
            , cast(SELLSTARTDATE as datetime) as SELL_START_DATE
            , cast(SIZE as varchar) as SIZE
            , cast(SIZEUNITMEASURECODE as varchar) as SIZE_UNIT_MEASURE_CODE
            , cast(STANDARDCOST as decimal) as STANDARD_COST
            , cast(STYLE as varchar) as STYLE
            , cast(WEIGHT as decimal) as WEIGHT
            , cast(WEIGHTUNITMEASURECODE as varchar) as WEIGHT_UNIT_MEASURE_CODE


        from {{ source('erp', 'PRODUCT') }}
    )

select *
from renomeado