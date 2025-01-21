With
    renomeado as (
        select
            cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
            , cast(NAME as varchar) as NAME
            , cast(REASONTYPE as varchar) as REASON_TYPE
            , cast(SALESREASONID as int) as SALES_REASON_ID


        from {{ source('erp', 'SALESREASON') }}
    )
    
select *
from renomeado
