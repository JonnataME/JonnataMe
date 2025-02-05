with
    sales_reason as (
        select
            cast(salesreasonid as int) as sales_reason_id
            , cast(reasontype as varchar) as reason_type
            , cast(name as varchar) as reason_name
        from {{ source('erp', 'salesreason') }}  
    )

select *
from sales_reason
