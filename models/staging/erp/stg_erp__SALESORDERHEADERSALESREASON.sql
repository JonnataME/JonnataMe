With
    renomeado as (
        select
            cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(SALESORDERID as int) as SALES_ORDER_ID
            , cast(SALESREASONID as int) as SALES_REASON_ID


        from {{ source('erp', 'SALESORDERHEADERSALESREASON') }}
    )

select *
from renomeado
